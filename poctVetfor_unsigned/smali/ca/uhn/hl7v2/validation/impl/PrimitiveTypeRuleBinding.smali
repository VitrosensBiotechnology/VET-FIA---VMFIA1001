.class public Lca/uhn/hl7v2/validation/impl/PrimitiveTypeRuleBinding;
.super Lca/uhn/hl7v2/validation/impl/RuleBinding;
.source "PrimitiveTypeRuleBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/validation/impl/RuleBinding<",
        "Lca/uhn/hl7v2/validation/PrimitiveTypeRule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/validation/PrimitiveTypeRule;)V
    .locals 0
    .param p1, "theVersion"    # Ljava/lang/String;
    .param p2, "theScope"    # Ljava/lang/String;
    .param p3, "theRule"    # Lca/uhn/hl7v2/validation/PrimitiveTypeRule;

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lca/uhn/hl7v2/validation/impl/RuleBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/validation/Rule;)V

    .line 45
    return-void
.end method
