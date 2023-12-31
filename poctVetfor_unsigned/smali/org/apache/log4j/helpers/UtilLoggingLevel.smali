.class public Lorg/apache/log4j/helpers/UtilLoggingLevel;
.super Lorg/apache/log4j/Level;
.source "UtilLoggingLevel.java"


# static fields
.field public static final CONFIG:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final CONFIG_INT:I = 0x36b0

.field public static final FINE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final FINER:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final FINER_INT:I = 0x2ee0

.field public static final FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final FINEST_INT:I = 0x2af8

.field public static final FINE_INT:I = 0x32c8

.field public static final INFO:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final SEVERE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final SEVERE_INT:I = 0x55f0

.field public static final UNKNOWN_INT:I = 0x2710

.field public static final WARNING:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final WARNING_INT:I = 0x5208

.field private static final serialVersionUID:J = 0xc9e7c96f753c6b3L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const-string v1, "SEVERE"

    const/16 v2, 0x55f0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->SEVERE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 80
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const-string v1, "WARNING"

    const/16 v2, 0x5208

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->WARNING:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 86
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const-string v1, "INFO"

    const/16 v2, 0x4e20

    const/4 v3, 0x5

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->INFO:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 91
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const-string v1, "CONFIG"

    const/16 v2, 0x36b0

    const/4 v3, 0x6

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->CONFIG:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 96
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const-string v1, "FINE"

    const/16 v2, 0x32c8

    const/4 v3, 0x7

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 101
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const-string v1, "FINER"

    const/16 v2, 0x2ee0

    const/16 v3, 0x8

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINER:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 106
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const-string v1, "FINEST"

    const/16 v2, 0x2af8

    const/16 v3, 0x9

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "levelStr"    # Ljava/lang/String;
    .param p3, "syslogEquivalent"    # I

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    .line 119
    return-void
.end method

.method public static getAllPossibleLevels()Ljava/util/List;
    .locals 2

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "list":Ljava/util/ArrayList;
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINER:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->INFO:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->CONFIG:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->WARNING:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->SEVERE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v0
.end method

.method public static toLevel(I)Lorg/apache/log4j/Level;
    .locals 1
    .param p0, "val"    # I

    .line 164
    sget-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-static {p0, v0}, Lorg/apache/log4j/helpers/UtilLoggingLevel;->toLevel(ILorg/apache/log4j/helpers/UtilLoggingLevel;)Lorg/apache/log4j/helpers/UtilLoggingLevel;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(Ljava/lang/String;)Lorg/apache/log4j/Level;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 189
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p0, v0}, Lorg/apache/log4j/helpers/UtilLoggingLevel;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;
    .locals 2
    .param p0, "sArg"    # Ljava/lang/String;
    .param p1, "defaultLevel"    # Lorg/apache/log4j/Level;

    .line 201
    if-nez p0, :cond_0

    .line 202
    return-object p1

    .line 205
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "s":Ljava/lang/String;
    const-string v1, "SEVERE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->SEVERE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v1

    .line 212
    :cond_1
    const-string v1, "WARNING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->WARNING:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v1

    .line 216
    :cond_2
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->INFO:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v1

    .line 220
    :cond_3
    const-string v1, "CONFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->CONFIG:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v1

    .line 224
    :cond_4
    const-string v1, "FINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 225
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v1

    .line 228
    :cond_5
    const-string v1, "FINER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINER:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v1

    .line 232
    :cond_6
    const-string v1, "FINEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 233
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v1

    .line 235
    :cond_7
    return-object p1
.end method

.method public static toLevel(ILorg/apache/log4j/helpers/UtilLoggingLevel;)Lorg/apache/log4j/helpers/UtilLoggingLevel;
    .locals 1
    .param p0, "val"    # I
    .param p1, "defaultLevel"    # Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 131
    const/16 v0, 0x2af8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2ee0

    if-eq p0, v0, :cond_5

    const/16 v0, 0x32c8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x36b0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4e20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5208

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55f0

    if-eq p0, v0, :cond_0

    .line 154
    return-object p1

    .line 133
    :cond_0
    sget-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->SEVERE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v0

    .line 136
    :cond_1
    sget-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->WARNING:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v0

    .line 139
    :cond_2
    sget-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->INFO:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v0

    .line 142
    :cond_3
    sget-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->CONFIG:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v0

    .line 145
    :cond_4
    sget-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v0

    .line 148
    :cond_5
    sget-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINER:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v0

    .line 151
    :cond_6
    sget-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object v0
.end method
