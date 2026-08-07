# 🚀 Terraform Enterprise CI Pipeline — Short Notes

## 1. CI Pipeline kya hai?

**CI (Continuous Integration)** ka purpose hai developer ke code ko automatically **validate, format aur security scan** karna.

```text
Developer
   ↓
GitHub
   ↓
Pull Request / Push
   ↓
GitHub Actions
   ↓
Terraform CI
   ↓
Validation + Security
   ↓
PASS → Merge
FAIL → Fix Code
```

---

## 2. Hamari Terraform CI Pipeline

```text
Checkout
   ↓
Terraform Setup
   ↓
Terraform Format
   ↓
Terraform Init
   ↓
Terraform Validate
   ↓
TFLint
   ↓
tfsec
   ↓
Gitleaks
   ↓
CI PASS
```

---

## 3. Checkout Repository

```yaml
actions/checkout@v4
```

GitHub repository ka code runner machine par download karta hai.

**Purpose:** Pipeline ko Terraform code available karana.

---

## 4. Setup Terraform

```yaml
hashicorp/setup-terraform@v3
```

Runner par required Terraform version install/setup karta hai.

**Purpose:** Consistent Terraform environment.

---

## 5. Terraform Format

```bash
terraform fmt -check -recursive
```

Terraform files formatting check karta hai.

Agar formatting wrong hai:

```text
❌ CI Failed
```

Correct hai:

```text
✅ Continue
```

---

## 6. Terraform Init

```bash
terraform init -backend=false
```

Terraform providers aur modules initialize karta hai.

Hamare current CI me:

```text
-backend=false
```

use kar rahe hain kyunki **abhi remote backend configured nahi hai**.

---

## 7. Terraform Validate

```bash
terraform validate
```

Terraform configuration ka syntax aur configuration structure check karta hai.

Example:

```text
❌ Missing argument
❌ Invalid resource
❌ Invalid reference
```

to CI fail.

---

## 8. TFLint

**TFLint = Terraform Linter**

Terraform code me best-practice aur configuration issues detect karta hai.

Example:

```text
❌ Missing required_version
❌ Invalid/unused configuration
⚠️ Terraform best-practice issue
```

---

## 9. tfsec

**tfsec = Terraform Security Scanner**

Terraform infrastructure me security misconfiguration detect karta hai.

Example:

```text
❌ Public storage
❌ Weak security configuration
❌ Open network access
```

Security issue milne par CI fail ho sakti hai.

---

## 10. Gitleaks

**Gitleaks = Secret Scanner**

Code me hardcoded secrets detect karta hai.

Example:

```hcl
password = "Password123!"
client_secret = "xxxxx"
access_key = "xxxxx"
```

Secret detect hua:

```text
❌ CI Failed
```

Hamne custom `.gitleaks.toml` bhi use kiya hai.

```text
.gitleaks.toml
     ↓
Custom Rules
     ↓
Password / Token / Secret Detection
```

Testing ke liye known dummy password ko temporarily allowlist kiya ja sakta hai.

---

# 11. CI Fail vs Pass

### ❌ Failure

```text
Terraform Format ❌
       OR
Terraform Validate ❌
       OR
TFLint ❌
       OR
tfsec ❌
       OR
Gitleaks ❌
       ↓
CI FAILED
       ↓
Fix Code
```

### ✅ Success

```text
Format ✅
   ↓
Init ✅
   ↓
Validate ✅
   ↓
TFLint ✅
   ↓
tfsec ✅
   ↓
Gitleaks ✅
   ↓
CI PASSED
   ↓
PR can be merged
```

---

# 12. CI ka main purpose

| Tool                   | Purpose                          |
| ---------------------- | -------------------------------- |
| **Terraform fmt**      | Code formatting                  |
| **Terraform init**     | Initialize Terraform             |
| **Terraform validate** | Configuration validation         |
| **TFLint**             | Terraform linting/best practices |
| **tfsec**              | Infrastructure security          |
| **Gitleaks**           | Secret detection                 |
| **GitHub Actions**     | Automation                       |

---

## ⭐ Interview ke liye 1-minute answer

> **"I implemented a Terraform CI pipeline using GitHub Actions. Whenever code is pushed or a pull request is created, the pipeline checks Terraform formatting, initializes and validates the configuration, runs TFLint for code quality, tfsec for infrastructure security, and Gitleaks for secret detection. If any validation or security check fails, the pipeline blocks the change. Only after all checks pass can the code proceed for merge."**

### 🔥 Yaad rakh:

```text
FMT → INIT → VALIDATE → TFLINT → TFSEC → GITLEAKS → PASS → MERGE
```

**CI ka kaam = Code ko deploy karna nahi, pehle code ko safely verify karna.**
