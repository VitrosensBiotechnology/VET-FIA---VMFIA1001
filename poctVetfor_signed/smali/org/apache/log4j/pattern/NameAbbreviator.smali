.class public abstract Lorg/apache/log4j/pattern/NameAbbreviator;
.super Ljava/lang/Object;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;,
        Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;,
        Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;,
        Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;,
        Lorg/apache/log4j/pattern/NameAbbreviator$NOPAbbreviator;
    }
.end annotation


# static fields
.field private static final DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/log4j/pattern/NameAbbreviator$NOPAbbreviator;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/NameAbbreviator$NOPAbbreviator;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    return-void
.end method

.method public static getAbbreviator(Ljava/lang/String;)Lorg/apache/log4j/pattern/NameAbbreviator;
    .locals 11
    .param p0, "pattern"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "trimmed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 53
    sget-object v1, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    return-object v1

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x39

    const/16 v4, 0x30

    const/4 v5, 0x0

    if-lez v2, :cond_2

    .line 58
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_1

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v3, :cond_2

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, "elements":I
    if-ltz v2, :cond_3

    .line 76
    new-instance v3, Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;

    invoke-direct {v3, v2}, Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;-><init>(I)V

    return-object v3

    .line 78
    :cond_3
    new-instance v3, Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;

    neg-int v4, v2

    invoke-direct {v3, v4}, Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;-><init>(I)V

    return-object v3

    .line 82
    .end local v2    # "elements":I
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v2, "fragments":Ljava/util/ArrayList;
    move v6, v5

    .line 87
    .local v6, "pos":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    if-ltz v6, :cond_9

    .line 88
    move v7, v6

    .line 90
    .local v7, "ellipsisPos":I
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_5

    .line 91
    const v8, 0x7fffffff

    .line 92
    .local v8, "charCount":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 94
    .end local v8    # "charCount":I
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v4, :cond_6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v3, :cond_6

    .line 95
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v4

    .line 96
    .restart local v8    # "charCount":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 98
    .end local v8    # "charCount":I
    :cond_6
    move v8, v5

    .line 102
    .restart local v8    # "charCount":I
    :goto_2
    const/4 v9, 0x0

    .line 104
    .local v9, "ellipsis":C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_7

    .line 105
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 107
    const/16 v10, 0x2e

    if-ne v9, v10, :cond_7

    .line 108
    const/4 v9, 0x0

    .line 112
    :cond_7
    new-instance v10, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    invoke-direct {v10, v8, v9}, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;-><init>(IC)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v10, "."

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 115
    const/4 v10, -0x1

    if-ne v6, v10, :cond_8

    .line 116
    goto :goto_3

    .line 119
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 120
    .end local v7    # "ellipsisPos":I
    goto :goto_1

    .line 122
    .end local v8    # "charCount":I
    .end local v9    # "ellipsis":C
    :cond_9
    :goto_3
    new-instance v3, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;

    invoke-direct {v3, v2}, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;-><init>(Ljava/util/List;)V

    return-object v3

    .line 128
    .end local v0    # "trimmed":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "fragments":Ljava/util/ArrayList;
    .end local v6    # "pos":I
    :cond_a
    sget-object v0, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    return-object v0
.end method

.method public static getDefaultAbbreviator()Lorg/apache/log4j/pattern/NameAbbreviator;
    .locals 1

    .line 137
    sget-object v0, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    return-object v0
.end method


# virtual methods
.method public abstract abbreviate(ILjava/lang/StringBuffer;)V
.end method
