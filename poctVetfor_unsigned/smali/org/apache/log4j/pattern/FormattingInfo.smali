.class public final Lorg/apache/log4j/pattern/FormattingInfo;
.super Ljava/lang/Object;
.source "FormattingInfo.java"


# static fields
.field private static final DEFAULT:Lorg/apache/log4j/pattern/FormattingInfo;

.field private static final SPACES:[C


# instance fields
.field private final leftAlign:Z

.field private final maxLength:I

.field private final minLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/log4j/pattern/FormattingInfo;->SPACES:[C

    .line 41
    new-instance v0, Lorg/apache/log4j/pattern/FormattingInfo;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v1, v2}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    sput-object v0, Lorg/apache/log4j/pattern/FormattingInfo;->DEFAULT:Lorg/apache/log4j/pattern/FormattingInfo;

    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "leftAlign"    # Z
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lorg/apache/log4j/pattern/FormattingInfo;->leftAlign:Z

    .line 68
    iput p2, p0, Lorg/apache/log4j/pattern/FormattingInfo;->minLength:I

    .line 69
    iput p3, p0, Lorg/apache/log4j/pattern/FormattingInfo;->maxLength:I

    .line 70
    return-void
.end method

.method public static getDefault()Lorg/apache/log4j/pattern/FormattingInfo;
    .locals 1

    .line 77
    sget-object v0, Lorg/apache/log4j/pattern/FormattingInfo;->DEFAULT:Lorg/apache/log4j/pattern/FormattingInfo;

    return-object v0
.end method


# virtual methods
.method public format(ILjava/lang/StringBuffer;)V
    .locals 4
    .param p1, "fieldStart"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, p1

    .line 113
    .local v0, "rawLength":I
    iget v1, p0, Lorg/apache/log4j/pattern/FormattingInfo;->maxLength:I

    if-le v0, v1, :cond_0

    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/log4j/pattern/FormattingInfo;->maxLength:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, p1, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 115
    :cond_0
    iget v1, p0, Lorg/apache/log4j/pattern/FormattingInfo;->minLength:I

    if-ge v0, v1, :cond_4

    .line 116
    iget-boolean v1, p0, Lorg/apache/log4j/pattern/FormattingInfo;->leftAlign:Z

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 118
    .local v1, "fieldEnd":I
    iget v2, p0, Lorg/apache/log4j/pattern/FormattingInfo;->minLength:I

    add-int/2addr v2, p1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 120
    move v2, v1

    .line 120
    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 121
    const/16 v3, 0x20

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "fieldEnd":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 124
    :cond_2
    iget v1, p0, Lorg/apache/log4j/pattern/FormattingInfo;->minLength:I

    sub-int/2addr v1, v0

    .line 126
    .local v1, "padLength":I
    :goto_1
    const/16 v2, 0x8

    if-le v1, v2, :cond_3

    .line 127
    sget-object v2, Lorg/apache/log4j/pattern/FormattingInfo;->SPACES:[C

    invoke-virtual {p2, p1, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    .line 126
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 130
    :cond_3
    sget-object v2, Lorg/apache/log4j/pattern/FormattingInfo;->SPACES:[C

    const/4 v3, 0x0

    invoke-virtual {p2, p1, v2, v3, v1}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    .line 133
    .end local v1    # "padLength":I
    :cond_4
    :goto_2
    return-void
.end method

.method public getMaxLength()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/apache/log4j/pattern/FormattingInfo;->maxLength:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/apache/log4j/pattern/FormattingInfo;->minLength:I

    return v0
.end method

.method public isLeftAligned()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/apache/log4j/pattern/FormattingInfo;->leftAlign:Z

    return v0
.end method
