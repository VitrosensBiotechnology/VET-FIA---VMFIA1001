.class public final Lorg/apache/log4j/pattern/ClassNamePatternConverter;
.super Lorg/apache/log4j/pattern/NamePatternConverter;
.source "ClassNamePatternConverter.java"


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "options"    # [Ljava/lang/String;

    .line 36
    const-string v0, "Class Name"

    const-string v1, "class name"

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/log4j/pattern/NamePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/ClassNamePatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/apache/log4j/pattern/ClassNamePatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/pattern/ClassNamePatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 56
    .local v0, "initialLength":I
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v1

    .line 58
    .local v1, "li":Lorg/apache/log4j/spi/LocationInfo;
    if-nez v1, :cond_0

    .line 59
    const-string v2, "?"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1}, Lorg/apache/log4j/spi/LocationInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    :goto_0
    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/pattern/ClassNamePatternConverter;->abbreviate(ILjava/lang/StringBuffer;)V

    .line 65
    return-void
.end method
