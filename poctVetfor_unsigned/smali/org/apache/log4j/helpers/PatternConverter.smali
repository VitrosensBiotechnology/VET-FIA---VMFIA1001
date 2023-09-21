.class public abstract Lorg/apache/log4j/helpers/PatternConverter;
.super Ljava/lang/Object;
.source "PatternConverter.java"


# static fields
.field static SPACES:[Ljava/lang/String;


# instance fields
.field leftAlign:Z

.field max:I

.field min:I

.field public next:Lorg/apache/log4j/helpers/PatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 91
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "  "

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "    "

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "        "

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "                "

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "                                "

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/log4j/helpers/PatternConverter;->SPACES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    .line 39
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    .line 43
    return-void
.end method

.method protected constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;)V
    .locals 1
    .param p1, "fi"    # Lorg/apache/log4j/helpers/FormattingInfo;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    .line 39
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    .line 47
    iget v0, p1, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    .line 48
    iget v0, p1, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    .line 49
    iget-boolean v0, p1, Lorg/apache/log4j/helpers/FormattingInfo;->leftAlign:Z

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    .line 50
    return-void
.end method


# virtual methods
.method protected abstract convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
.end method

.method public format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "e"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 65
    invoke-virtual {p0, p2}, Lorg/apache/log4j/helpers/PatternConverter;->convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 68
    iget v1, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    if-lez v1, :cond_0

    .line 69
    iget v1, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    invoke-virtual {p0, p1, v1}, Lorg/apache/log4j/helpers/PatternConverter;->spacePad(Ljava/lang/StringBuffer;I)V

    .line 70
    :cond_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 75
    .local v1, "len":I
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    if-le v1, v2, :cond_2

    .line 76
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 77
    :cond_2
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    if-ge v1, v2, :cond_4

    .line 78
    iget-boolean v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    if-eqz v2, :cond_3

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v2}, Lorg/apache/log4j/helpers/PatternConverter;->spacePad(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 83
    :cond_3
    iget v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v2}, Lorg/apache/log4j/helpers/PatternConverter;->spacePad(Ljava/lang/StringBuffer;I)V

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :goto_0
    return-void
.end method

.method public spacePad(Ljava/lang/StringBuffer;I)V
    .locals 2
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "length"    # I

    .line 100
    :goto_0
    const/16 v0, 0x20

    if-lt p2, v0, :cond_0

    .line 101
    sget-object v0, Lorg/apache/log4j/helpers/PatternConverter;->SPACES:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    add-int/lit8 p2, p2, -0x20

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x4

    .line 105
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 106
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lorg/apache/log4j/helpers/PatternConverter;->SPACES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
