---
name: test-driven-development
description: "Apply the red, green, refactor cycle when the user or project calls for test-driven development."
---

# Test-Driven Development

Use test-first development for a behavioral change when the user or project calls for TDD, or when a focused regression test would establish a useful contract.

1. **Red.** Add the smallest meaningful test for the expected outcome through the real entry point. Run it against pre-fix behavior and check that it fails for the intended reason. Resolve missing dependencies or broken setup before treating a failure as evidence.
2. **Green.** Make the smallest maintainable change that satisfies the test. Run the focused test again, then relevant existing coverage. Confirm the behavior rather than inferring it from exit status alone when the harness can skip tests.
3. **Refactor.** Improve the design while preserving the behavior. Keep tests anchored to the contract rather than internal implementation. Re-run appropriate checks after changing behavior or its dependencies.

If implementation or user edits already exist, preserve them. Establish the before-state safely with a known baseline, an isolated copy, or a narrowly scoped comparison when useful. When tests are infeasible, document observations from a manual, visual, or integration check and say what remains unverified. Read [good test patterns](writing-good-tests.md) when choosing test boundaries and mocks.
