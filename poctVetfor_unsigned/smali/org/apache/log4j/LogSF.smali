.class public final Lorg/apache/log4j/LogSF;
.super Lorg/apache/log4j/LogXF;
.source "LogSF.java"


# static fields
.field private static final FQCN:Ljava/lang/String;

.field static synthetic class$org$apache$log4j$LogSF:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    sget-object v0, Lorg/apache/log4j/LogSF;->class$org$apache$log4j$LogSF:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.LogSF"

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/LogSF;->class$org$apache$log4j$LogSF:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/log4j/LogSF;->class$org$apache$log4j$LogSF:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/LogSF;->FQCN:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/log4j/LogXF;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 135
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 135
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # B

    .line 542
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 545
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # C

    .line 529
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 532
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # D

    .line 607
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 610
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # F

    .line 594
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 597
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # I

    .line 568
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 571
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # J

    .line 581
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 584
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/Object;

    .line 620
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 623
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 634
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 638
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 650
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 654
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .line 668
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 672
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # S

    .line 555
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 558
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Z

    .line 516
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 519
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .line 271
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    :cond_0
    return-void
.end method

.method public static error(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 225
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method

.method public static error(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .line 319
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    :cond_0
    return-void
.end method

.method public static fatal(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 238
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method public static fatal(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .line 335
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    :cond_0
    return-void
.end method

.method private static forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V
    .locals 7
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 147
    new-instance v6, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogSF;->FQCN:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lorg/apache/log4j/Logger;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 148
    return-void
.end method

.method private static forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 162
    new-instance v6, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogSF;->FQCN:Ljava/lang/String;

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lorg/apache/log4j/Logger;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 163
    return-void
.end method

.method private static format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arg0"    # Ljava/lang/Object;

    .line 90
    if-eqz p0, :cond_1

    .line 93
    const-string v0, "\\{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    const-string v0, "{}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "pos":I
    if-ltz v0, :cond_1

    .line 98
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    .end local v0    # "pos":I
    :cond_1
    return-object p0
.end method

.method private static format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "resourceBundleName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 117
    if-eqz p0, :cond_0

    .line 119
    :try_start_0
    invoke-static {p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 121
    .local v0, "bundle":Ljava/util/ResourceBundle;
    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    move-object v0, v1

    .line 121
    .local v0, "pattern":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0    # "pattern":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/lang/Exception;
    move-object v0, p1

    .line 124
    .local v0, "pattern":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 126
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 128
    .restart local v0    # "pattern":Ljava/lang/String;
    :goto_1
    invoke-static {v0, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    .line 53
    if-eqz p0, :cond_5

    .line 54
    const-string v0, ""

    .line 55
    .local v0, "retval":Ljava/lang/String;
    const/4 v1, 0x0

    .line 56
    .local v1, "count":I
    const/4 v2, 0x0

    .line 57
    .local v2, "prev":I
    const-string v3, "{"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 58
    .local v3, "pos":I
    :goto_0
    if-ltz v3, :cond_4

    .line 59
    if-eqz v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    add-int/lit8 v2, v3, 0x1

    goto :goto_3

    .line 60
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_3

    .line 62
    if-eqz p1, :cond_2

    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 63
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v1, 0x1

    .line 63
    .local v5, "count":I
    aget-object v1, p1, v1

    .line 63
    .end local v1    # "count":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    move v1, v5

    goto :goto_2

    .line 65
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "{}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_2
    add-int/lit8 v2, v3, 0x2

    goto :goto_3

    .line 69
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    add-int/lit8 v2, v3, 0x1

    .line 76
    :goto_3
    const-string v4, "{"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_0

    .line 78
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 80
    .end local v0    # "retval":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "prev":I
    .end local v3    # "pos":I
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # B

    .line 708
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 711
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # C

    .line 695
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 698
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # D

    .line 773
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 776
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # F

    .line 760
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 763
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # I

    .line 734
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 737
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # J

    .line 747
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 750
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/Object;

    .line 786
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 789
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 800
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 803
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 815
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 819
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .line 833
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 837
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # S

    .line 721
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 724
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Z

    .line 682
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 685
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 199
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .line 287
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;B)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # B

    .line 1087
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1091
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;C)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # C

    .line 1105
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1109
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;D)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # D

    .line 1193
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-static {p3, p4}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1197
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;F)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # F

    .line 1175
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1179
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;I)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # I

    .line 1139
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1143
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;J)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # J

    .line 1157
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-static {p3, p4}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1161
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    .line 1052
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1056
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;

    .line 1212
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    invoke-static {p3, p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1216
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;

    .line 1231
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    invoke-static {p3, p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1235
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arg0"    # Ljava/lang/Object;
    .param p4, "arg1"    # Ljava/lang/Object;
    .param p5, "arg2"    # Ljava/lang/Object;
    .param p6, "arg3"    # Ljava/lang/Object;

    .line 1252
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    invoke-static {p3, p4, p5, p6}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1256
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;S)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # S

    .line 1122
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1126
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "param1"    # Z

    .line 1069
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1073
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/Object;

    .line 1016
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1020
    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "parameters"    # [Ljava/lang/Object;

    .line 1035
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-static {p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1039
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # B

    .line 1369
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1373
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # C

    .line 1350
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1354
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # D

    .line 1464
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    invoke-static {p4, p5}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1468
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # F

    .line 1444
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1448
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # I

    .line 1407
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1411
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # J

    .line 1426
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    invoke-static {p4, p5}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1430
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # Ljava/lang/Object;

    .line 1312
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1316
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param0"    # Ljava/lang/Object;
    .param p5, "param1"    # Ljava/lang/Object;

    .line 1485
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    invoke-static {p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1489
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param0"    # Ljava/lang/Object;
    .param p5, "param1"    # Ljava/lang/Object;
    .param p6, "param2"    # Ljava/lang/Object;

    .line 1509
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    invoke-static {p4, p5, p6}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1513
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param0"    # Ljava/lang/Object;
    .param p5, "param1"    # Ljava/lang/Object;
    .param p6, "param2"    # Ljava/lang/Object;
    .param p7, "param3"    # Ljava/lang/Object;

    .line 1535
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    invoke-static {p4, p5, p6, p7}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1540
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # S

    .line 1388
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1392
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "param1"    # Z

    .line 1331
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1335
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "parameters"    # [Ljava/lang/Object;

    .line 1272
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1276
    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "level"    # Lorg/apache/log4j/Level;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "bundleName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "parameters"    # [Ljava/lang/Object;

    .line 1293
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    invoke-static {p3, p4, p5}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1297
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # B

    .line 376
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # C

    .line 363
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 366
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # D

    .line 441
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 444
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # F

    .line 428
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # I

    .line 402
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # J

    .line 415
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 418
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/Object;

    .line 454
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 457
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 468
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 472
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 484
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 488
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .line 502
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # S

    .line 389
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Z

    .line 350
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # B

    .line 873
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 876
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # C

    .line 860
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 863
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # D

    .line 938
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 941
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # F

    .line 925
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 928
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # I

    .line 899
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 902
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # J

    .line 912
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 915
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/Object;

    .line 951
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 954
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 965
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 969
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 981
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 985
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;
    .param p5, "arg3"    # Ljava/lang/Object;

    .line 999
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 1003
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # S

    .line 886
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 889
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "argument"    # Z

    .line 847
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 850
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 212
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logger"    # Lorg/apache/log4j/Logger;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .line 303
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    :cond_0
    return-void
.end method
