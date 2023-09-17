.class public final Lorg/apache/log4j/pattern/PatternParser;
.super Ljava/lang/Object;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;
    }
.end annotation


# static fields
.field private static final CONVERTER_STATE:I = 0x1

.field private static final DOT_STATE:I = 0x3

.field private static final ESCAPE_CHAR:C = '%'

.field private static final FILENAME_PATTERN_RULES:Ljava/util/Map;

.field private static final LITERAL_STATE:I = 0x0

.field private static final MAX_STATE:I = 0x5

.field private static final MIN_STATE:I = 0x4

.field private static final PATTERN_LAYOUT_RULES:Ljava/util/Map;

.field static synthetic class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 91
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    .local v0, "rules":Ljava/util/Map;
    const-string v1, "c"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.apache.log4j.pattern.LoggerPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "logger"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.apache.log4j.pattern.LoggerPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "C"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "org.apache.log4j.pattern.ClassNamePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "class"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string v2, "org.apache.log4j.pattern.ClassNamePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    goto :goto_3

    :cond_3
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    :goto_3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "d"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_4

    const-string v2, "org.apache.log4j.pattern.DatePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    goto :goto_4

    :cond_4
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    :goto_4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "date"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_5

    const-string v2, "org.apache.log4j.pattern.DatePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    goto :goto_5

    :cond_5
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    :goto_5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "F"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_6

    const-string v2, "org.apache.log4j.pattern.FileLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    goto :goto_6

    :cond_6
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    :goto_6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "file"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_7

    const-string v2, "org.apache.log4j.pattern.FileLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    goto :goto_7

    :cond_7
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    :goto_7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "l"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_8

    const-string v2, "org.apache.log4j.pattern.FullLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    goto :goto_8

    :cond_8
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    :goto_8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "L"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_9

    const-string v2, "org.apache.log4j.pattern.LineLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    goto :goto_9

    :cond_9
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    :goto_9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "line"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_a

    const-string v2, "org.apache.log4j.pattern.LineLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    goto :goto_a

    :cond_a
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    :goto_a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "m"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_b

    const-string v2, "org.apache.log4j.pattern.MessagePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    goto :goto_b

    :cond_b
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    :goto_b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "message"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_c

    const-string v2, "org.apache.log4j.pattern.MessagePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    goto :goto_c

    :cond_c
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    :goto_c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "n"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_d

    const-string v2, "org.apache.log4j.pattern.LineSeparatorPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    goto :goto_d

    :cond_d
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    :goto_d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "M"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_e

    const-string v2, "org.apache.log4j.pattern.MethodLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    goto :goto_e

    :cond_e
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    :goto_e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "method"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_f

    const-string v2, "org.apache.log4j.pattern.MethodLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    goto :goto_f

    :cond_f
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    :goto_f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "p"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_10

    const-string v2, "org.apache.log4j.pattern.LevelPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    goto :goto_10

    :cond_10
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    :goto_10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "level"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_11

    const-string v2, "org.apache.log4j.pattern.LevelPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    goto :goto_11

    :cond_11
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    :goto_11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "r"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_12

    const-string v2, "org.apache.log4j.pattern.RelativeTimePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    goto :goto_12

    :cond_12
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    :goto_12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "relative"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_13

    const-string v2, "org.apache.log4j.pattern.RelativeTimePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    goto :goto_13

    :cond_13
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    :goto_13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "t"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_14

    const-string v2, "org.apache.log4j.pattern.ThreadPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    goto :goto_14

    :cond_14
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    :goto_14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "thread"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_15

    const-string v2, "org.apache.log4j.pattern.ThreadPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    goto :goto_15

    :cond_15
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    :goto_15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "x"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_16

    const-string v2, "org.apache.log4j.pattern.NDCPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    goto :goto_16

    :cond_16
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    :goto_16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "ndc"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_17

    const-string v2, "org.apache.log4j.pattern.NDCPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    goto :goto_17

    :cond_17
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    :goto_17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "X"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_18

    const-string v2, "org.apache.log4j.pattern.PropertiesPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    goto :goto_18

    :cond_18
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    :goto_18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "properties"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_19

    const-string v2, "org.apache.log4j.pattern.PropertiesPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    goto :goto_19

    :cond_19
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    :goto_19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "sn"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1a

    const-string v2, "org.apache.log4j.pattern.SequenceNumberPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    goto :goto_1a

    :cond_1a
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    :goto_1a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "sequenceNumber"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1b

    const-string v2, "org.apache.log4j.pattern.SequenceNumberPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    goto :goto_1b

    :cond_1b
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    :goto_1b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "throwable"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_1c

    const-string v2, "org.apache.log4j.pattern.ThrowableInformationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    goto :goto_1c

    :cond_1c
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    :goto_1c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v1, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;

    invoke-direct {v1, v0}, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lorg/apache/log4j/pattern/PatternParser;->PATTERN_LAYOUT_RULES:Ljava/util/Map;

    .line 138
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 139
    .local v1, "fnameRules":Ljava/util/Map;
    const-string v2, "d"

    sget-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    if-nez v3, :cond_1d

    const-string v3, "org.apache.log4j.pattern.FileDatePatternConverter"

    invoke-static {v3}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    goto :goto_1d

    :cond_1d
    sget-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    :goto_1d
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "date"

    sget-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    if-nez v3, :cond_1e

    const-string v3, "org.apache.log4j.pattern.FileDatePatternConverter"

    invoke-static {v3}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    goto :goto_1e

    :cond_1e
    sget-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    :goto_1e
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v2, "i"

    sget-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    if-nez v3, :cond_1f

    const-string v3, "org.apache.log4j.pattern.IntegerPatternConverter"

    invoke-static {v3}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    goto :goto_1f

    :cond_1f
    sget-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    :goto_1f
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "index"

    sget-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    if-nez v3, :cond_20

    const-string v3, "org.apache.log4j.pattern.IntegerPatternConverter"

    invoke-static {v3}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    goto :goto_20

    :cond_20
    sget-object v3, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    :goto_20
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v2, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;

    invoke-direct {v2, v1}, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;-><init>(Ljava/util/Map;)V

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->FILENAME_PATTERN_RULES:Ljava/util/Map;

    .line 145
    .end local v0    # "rules":Ljava/util/Map;
    .end local v1    # "fnameRules":Ljava/util/Map;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 92
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 92
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private static createConverter(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lorg/apache/log4j/pattern/PatternConverter;
    .locals 11
    .param p0, "converterId"    # Ljava/lang/String;
    .param p1, "currentLiteral"    # Ljava/lang/StringBuffer;
    .param p2, "converterRegistry"    # Ljava/util/Map;
    .param p3, "rules"    # Ljava/util/Map;
    .param p4, "options"    # Ljava/util/List;

    .line 424
    move-object v0, p0

    .line 425
    .local v0, "converterName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 427
    .local v1, "converterObj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 427
    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_2

    if-nez v1, :cond_2

    .line 429
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 431
    if-eqz p2, :cond_0

    .line 432
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 435
    :cond_0
    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 436
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 428
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 440
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 441
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unrecognized format specifier ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 443
    return-object v2

    .line 446
    :cond_3
    const/4 v4, 0x0

    .line 448
    .local v4, "converterClass":Ljava/lang/Class;
    instance-of v5, v1, Ljava/lang/Class;

    if-eqz v5, :cond_4

    .line 449
    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    goto :goto_1

    .line 451
    :cond_4
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 453
    :try_start_0
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v5

    .line 460
    nop

    .line 470
    :goto_1
    :try_start_1
    const-string v5, "newInstance"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-string v8, "[Ljava.lang.String;"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 476
    .local v5, "factory":Ljava/lang/reflect/Method;
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    .line 477
    .local v7, "optionsArray":[Ljava/lang/String;
    invoke-interface {p4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    .line 479
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v3

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 482
    .local v6, "newObj":Ljava/lang/Object;
    instance-of v8, v6, Lorg/apache/log4j/pattern/PatternConverter;

    if-eqz v8, :cond_5

    .line 483
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    invoke-virtual {p1, v3, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 488
    move-object v8, v6

    check-cast v8, Lorg/apache/log4j/pattern/PatternConverter;

    return-object v8

    .line 490
    :cond_5
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " does not extend PatternConverter."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    .end local v5    # "factory":Ljava/lang/reflect/Method;
    .end local v6    # "newObj":Ljava/lang/Object;
    .end local v7    # "optionsArray":[Ljava/lang/String;
    goto :goto_2

    .line 494
    :catch_0
    move-exception v5

    .line 495
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Error creating converter for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/log4j/pattern/PatternConverter;

    .line 501
    .local v6, "pc":Lorg/apache/log4j/pattern/PatternConverter;
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-virtual {p1, v3, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 506
    return-object v6

    .line 507
    .end local v6    # "pc":Lorg/apache/log4j/pattern/PatternConverter;
    :catch_1
    move-exception v3

    .line 508
    .local v3, "ex2":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Error creating converter for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 512
    .end local v3    # "ex2":Ljava/lang/Exception;
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v2

    .line 454
    :catch_2
    move-exception v3

    .line 455
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Class for conversion pattern %"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    return-object v2

    .line 462
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad map entry for conversion pattern %"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 465
    return-object v2
.end method

.method private static extractConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 1
    .param p0, "lastChar"    # C
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "convBuf"    # Ljava/lang/StringBuffer;
    .param p4, "currentLiteral"    # Ljava/lang/StringBuffer;

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 194
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    return p2

    .line 198
    :cond_0
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 210
    :cond_1
    return p2
.end method

.method private static extractOptions(Ljava/lang/String;ILjava/util/List;)I
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "options"    # Ljava/util/List;

    .line 221
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 222
    const/16 v0, 0x7d

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 224
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 225
    goto :goto_1

    .line 228
    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "r":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 p1, v0, 0x1

    .line 231
    .end local v0    # "end":I
    .end local v1    # "r":Ljava/lang/String;
    goto :goto_0

    .line 233
    :cond_1
    :goto_1
    return p1
.end method

.method private static finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I
    .locals 7
    .param p0, "c"    # C
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "currentLiteral"    # Ljava/lang/StringBuffer;
    .param p4, "formattingInfo"    # Lorg/apache/log4j/pattern/FormattingInfo;
    .param p5, "converterRegistry"    # Ljava/util/Map;
    .param p6, "rules"    # Ljava/util/Map;
    .param p7, "patternConverters"    # Ljava/util/List;
    .param p8, "formattingInfos"    # Ljava/util/List;

    .line 534
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 535
    .local v0, "convBuf":Ljava/lang/StringBuffer;
    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/log4j/pattern/PatternParser;->extractConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result p2

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "converterId":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v2, "options":Ljava/util/List;
    invoke-static {p1, p2, v2}, Lorg/apache/log4j/pattern/PatternParser;->extractOptions(Ljava/lang/String;ILjava/util/List;)I

    move-result p2

    .line 542
    invoke-static {v1, p3, p5, p6, v2}, Lorg/apache/log4j/pattern/PatternParser;->createConverter(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lorg/apache/log4j/pattern/PatternConverter;

    move-result-object v3

    .line 546
    .local v3, "pc":Lorg/apache/log4j/pattern/PatternConverter;
    if-nez v3, :cond_2

    .line 549
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Unrecognized conversion specifier ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 554
    .local v4, "msg":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    const-string v5, "] starting at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 550
    .end local v4    # "msg":Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Empty conversion specifier starting at position "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 558
    .restart local v4    # "msg":Ljava/lang/StringBuffer;
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string v5, " in conversion pattern."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 563
    new-instance v5, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v5

    invoke-interface {p8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v4    # "msg":Ljava/lang/StringBuffer;
    goto :goto_2

    .line 567
    :cond_2
    invoke-interface {p7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-interface {p8, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 571
    new-instance v4, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    invoke-interface {p8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_3
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 579
    return p2
.end method

.method public static getFileNamePatternRules()Ljava/util/Map;
    .locals 1

    .line 166
    sget-object v0, Lorg/apache/log4j/pattern/PatternParser;->FILENAME_PATTERN_RULES:Ljava/util/Map;

    return-object v0
.end method

.method public static getPatternLayoutRules()Ljava/util/Map;
    .locals 1

    .line 158
    sget-object v0, Lorg/apache/log4j/pattern/PatternParser;->PATTERN_LAYOUT_RULES:Ljava/util/Map;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 23
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "patternConverters"    # Ljava/util/List;
    .param p2, "formattingInfos"    # Ljava/util/List;
    .param p3, "converterRegistry"    # Ljava/util/Map;
    .param p4, "rules"    # Ljava/util/Map;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 247
    if-nez v9, :cond_0

    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v12, v0

    .line 253
    .local v12, "currentLiteral":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    .line 254
    .local v13, "patternLength":I
    const/4 v0, 0x0

    .line 256
    .local v0, "state":I
    const/4 v1, 0x0

    .line 257
    .local v1, "i":I
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v2

    move v14, v0

    .line 257
    .end local v0    # "state":I
    .local v2, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v14, "state":I
    :goto_0
    move-object v15, v2

    .line 259
    .end local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v15, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    if-ge v1, v13, :cond_a

    .line 260
    add-int/lit8 v8, v1, 0x1

    .line 260
    .local v8, "i":I
    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 262
    .end local v1    # "i":I
    .local v7, "c":C
    const/4 v6, 0x0

    const/16 v0, 0x39

    const/16 v1, 0x30

    packed-switch v14, :pswitch_data_0

    .line 397
    :pswitch_0
    move v1, v7

    move v0, v8

    move/from16 v16, v14

    .line 397
    .end local v7    # "c":C
    .end local v8    # "i":I
    .end local v14    # "state":I
    .local v0, "i":I
    .local v1, "c":C
    .local v16, "state":I
    goto/16 :goto_3

    .line 381
    .end local v0    # "i":I
    .end local v1    # "c":C
    .end local v16    # "state":I
    .restart local v7    # "c":C
    .restart local v8    # "i":I
    .restart local v14    # "state":I
    :pswitch_1
    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    if-lt v7, v1, :cond_1

    if-gt v7, v0, :cond_1

    .line 384
    new-instance v0, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v2

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v7, -0x30

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .line 397
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move-object v2, v0

    move v1, v7

    move v0, v8

    goto/16 :goto_5

    .line 389
    .end local v0    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    :cond_1
    move v0, v7

    move-object v1, v9

    move v2, v8

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v5, p3

    move/from16 v16, v14

    move v14, v6

    move-object/from16 v6, p4

    .line 389
    .end local v14    # "state":I
    .restart local v16    # "state":I
    move/from16 v17, v7

    move-object v7, v10

    .line 389
    .end local v7    # "c":C
    .local v17, "c":C
    move/from16 v18, v8

    move-object v8, v11

    .line 389
    .end local v8    # "i":I
    .local v18, "i":I
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 392
    .end local v18    # "i":I
    .local v0, "i":I
    const/4 v1, 0x0

    .line 393
    .end local v16    # "state":I
    .local v1, "state":I
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v2

    .line 394
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 397
    move v14, v1

    move/from16 v1, v17

    goto/16 :goto_5

    .line 340
    .end local v0    # "i":I
    .end local v1    # "state":I
    .end local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .end local v17    # "c":C
    .restart local v7    # "c":C
    .restart local v8    # "i":I
    .restart local v14    # "state":I
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    :pswitch_2
    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v16, v14

    move v14, v6

    .line 340
    .end local v7    # "c":C
    .end local v8    # "i":I
    .end local v14    # "state":I
    .restart local v16    # "state":I
    .restart local v17    # "c":C
    .restart local v18    # "i":I
    move/from16 v8, v17

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    .end local v17    # "c":C
    .local v8, "c":C
    if-lt v8, v1, :cond_2

    if-gt v8, v0, :cond_2

    .line 343
    new-instance v0, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v7, v8, -0x30

    add-int/2addr v2, v7

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .line 397
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move-object v2, v0

    move v1, v8

    move/from16 v14, v16

    goto :goto_1

    .line 348
    .end local v0    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    :cond_2
    const/16 v0, 0x2e

    if-ne v8, v0, :cond_3

    .line 349
    const/4 v0, 0x3

    .line 397
    .end local v16    # "state":I
    .local v0, "state":I
    move v14, v0

    move v1, v8

    move-object v2, v15

    goto :goto_1

    .line 351
    .end local v0    # "state":I
    .restart local v16    # "state":I
    :cond_3
    move v0, v8

    move-object v1, v9

    move/from16 v2, v18

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v10

    move/from16 v19, v8

    move-object v8, v11

    .line 351
    .end local v8    # "c":C
    .local v19, "c":C
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 354
    .end local v18    # "i":I
    .local v0, "i":I
    const/4 v1, 0x0

    .line 355
    .end local v16    # "state":I
    .restart local v1    # "state":I
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v2

    .line 356
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 359
    nop

    .line 397
    move v14, v1

    move/from16 v1, v19

    goto/16 :goto_5

    .line 362
    .end local v0    # "i":I
    .end local v1    # "state":I
    .end local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .end local v19    # "c":C
    .restart local v7    # "c":C
    .local v8, "i":I
    .restart local v14    # "state":I
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    :pswitch_3
    move/from16 v19, v7

    move/from16 v18, v8

    move/from16 v16, v14

    .line 362
    .end local v7    # "c":C
    .end local v8    # "i":I
    .end local v14    # "state":I
    .restart local v16    # "state":I
    .restart local v18    # "i":I
    .restart local v19    # "c":C
    move/from16 v8, v19

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    .end local v19    # "c":C
    .local v8, "c":C
    if-lt v8, v1, :cond_4

    if-gt v8, v0, :cond_4

    .line 365
    new-instance v0, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v2

    add-int/lit8 v7, v8, -0x30

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .line 369
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    const/4 v1, 0x5

    .line 397
    .end local v16    # "state":I
    .restart local v1    # "state":I
    move-object v2, v0

    move v14, v1

    move v1, v8

    .line 397
    .end local v8    # "c":C
    .end local v18    # "i":I
    .local v0, "i":I
    .local v1, "c":C
    .restart local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v14    # "state":I
    :goto_1
    move/from16 v0, v18

    goto/16 :goto_5

    .line 371
    .end local v0    # "i":I
    .end local v1    # "c":C
    .end local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .end local v14    # "state":I
    .restart local v8    # "c":C
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v16    # "state":I
    .restart local v18    # "i":I
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Error occured in position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v7, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 371
    .end local v18    # "i":I
    .local v7, "i":I
    const-string v1, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    .line 378
    .end local v16    # "state":I
    .local v0, "state":I
    goto :goto_2

    .line 301
    .end local v0    # "state":I
    .local v7, "c":C
    .local v8, "i":I
    .restart local v14    # "state":I
    :pswitch_4
    move/from16 v16, v14

    move v14, v6

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    .line 301
    .end local v14    # "state":I
    .local v7, "i":I
    .local v8, "c":C
    .restart local v16    # "state":I
    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 303
    packed-switch v8, :pswitch_data_1

    .line 319
    if-lt v8, v1, :cond_5

    if-gt v8, v0, :cond_5

    .line 320
    new-instance v0, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    add-int/lit8 v2, v8, -0x30

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .line 324
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    const/4 v1, 0x4

    .line 397
    .end local v16    # "state":I
    .local v1, "state":I
    move-object v2, v0

    move v14, v1

    move v0, v7

    move v1, v8

    goto/16 :goto_5

    .line 313
    .end local v0    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .end local v1    # "state":I
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v16    # "state":I
    :pswitch_5
    const/4 v0, 0x3

    .line 315
    .end local v16    # "state":I
    .local v0, "state":I
    nop

    .line 397
    .end local v7    # "i":I
    .end local v8    # "c":C
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v0, "i":I
    .local v1, "c":C
    .restart local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v14    # "state":I
    :goto_2
    move v14, v0

    move v0, v7

    move v1, v8

    move-object v2, v15

    goto/16 :goto_5

    .line 305
    .end local v0    # "i":I
    .end local v1    # "c":C
    .end local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .end local v14    # "state":I
    .restart local v7    # "i":I
    .restart local v8    # "c":C
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v16    # "state":I
    :pswitch_6
    new-instance v0, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v1

    invoke-virtual {v15}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .line 310
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v0, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    nop

    .line 397
    move-object v2, v0

    move v0, v7

    move v1, v8

    goto/16 :goto_4

    .line 326
    .end local v0    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    :cond_5
    move v0, v8

    move-object v1, v9

    move v2, v7

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v20, v7

    move-object v7, v10

    .line 326
    .end local v7    # "i":I
    .local v20, "i":I
    move/from16 v21, v8

    move-object v8, v11

    .line 326
    .end local v8    # "c":C
    .local v21, "c":C
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 331
    .end local v20    # "i":I
    .local v0, "i":I
    const/4 v1, 0x0

    .line 332
    .end local v16    # "state":I
    .local v1, "state":I
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v2

    .line 333
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 337
    nop

    .line 397
    move v14, v1

    move/from16 v1, v21

    goto :goto_5

    .line 266
    .end local v0    # "i":I
    .end local v1    # "state":I
    .end local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .end local v21    # "c":C
    .local v7, "c":C
    .local v8, "i":I
    .restart local v14    # "state":I
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    :pswitch_7
    move/from16 v21, v7

    move/from16 v20, v8

    move/from16 v16, v14

    move v14, v6

    .line 266
    .end local v7    # "c":C
    .end local v8    # "i":I
    .end local v14    # "state":I
    .restart local v16    # "state":I
    .restart local v20    # "i":I
    .restart local v21    # "c":C
    move/from16 v0, v20

    if-ne v0, v13, :cond_6

    .line 267
    .end local v20    # "i":I
    .restart local v0    # "i":I
    move/from16 v1, v21

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    .end local v21    # "c":C
    .local v1, "c":C
    nop

    .line 257
    move v1, v0

    move-object v2, v15

    move/from16 v14, v16

    goto/16 :goto_0

    .line 272
    .end local v1    # "c":C
    .restart local v21    # "c":C
    :cond_6
    move/from16 v1, v21

    .line 272
    .end local v21    # "c":C
    .restart local v1    # "c":C
    const/16 v2, 0x25

    if-ne v1, v2, :cond_9

    .line 274
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_8

    .line 283
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 284
    new-instance v2, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_7
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 290
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    const/4 v2, 0x1

    .line 292
    .end local v16    # "state":I
    .local v2, "state":I
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v3

    .line 397
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v3, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move v14, v2

    move-object v2, v3

    goto :goto_5

    .line 276
    .end local v2    # "state":I
    .end local v3    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v16    # "state":I
    :cond_8
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    add-int/lit8 v8, v0, 0x1

    .line 279
    .end local v0    # "i":I
    .restart local v8    # "i":I
    nop

    .line 397
    move v0, v8

    goto :goto_3

    .line 295
    .end local v8    # "i":I
    .restart local v0    # "i":I
    :cond_9
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 298
    nop

    .line 397
    .end local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .end local v16    # "state":I
    .local v2, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v14    # "state":I
    :goto_3
    move-object v2, v15

    :goto_4
    move/from16 v14, v16

    .line 257
    :goto_5
    move v1, v0

    goto/16 :goto_0

    .line 402
    .end local v0    # "i":I
    .end local v2    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v1, "i":I
    .restart local v15    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    :cond_a
    move/from16 v16, v14

    .line 402
    .end local v14    # "state":I
    .restart local v16    # "state":I
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 403
    new-instance v0, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
