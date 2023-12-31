.class public abstract Lorg/apache/log4j/helpers/FileWatchdog;
.super Ljava/lang/Thread;
.source "FileWatchdog.java"


# static fields
.field public static final DEFAULT_DELAY:J = 0xea60L


# instance fields
.field protected delay:J

.field file:Ljava/io/File;

.field protected filename:Ljava/lang/String;

.field interrupted:Z

.field lastModif:J

.field warnedAlready:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 54
    const-string v0, "FileWatchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 45
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    .line 50
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    .line 55
    iput-object p1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/log4j/helpers/FileWatchdog;->setDaemon(Z)V

    .line 58
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->checkAndConfigure()V

    .line 59
    return-void
.end method


# virtual methods
.method protected checkAndConfigure()V
    .locals 6

    .line 77
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .local v1, "fileExists":Z
    nop

    .line 85
    if-eqz v1, :cond_1

    .line 86
    iget-object v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 87
    .local v2, "l":J
    iget-wide v4, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 88
    iput-wide v2, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    .line 89
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->doOnChange()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    .line 92
    .end local v2    # "l":J
    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    iget-boolean v2, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    if-nez v2, :cond_2

    .line 94
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "] does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 95
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    .line 98
    :cond_2
    :goto_0
    return-void

    .line 78
    .end local v1    # "fileExists":Z
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Was not allowed to read check file existance, file:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 81
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    .line 82
    return-void
.end method

.method protected abstract doOnChange()V
.end method

.method public run()V
    .locals 2

    .line 102
    :goto_0
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    if-nez v0, :cond_0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 108
    :goto_1
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->checkAndConfigure()V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public setDelay(J)V
    .locals 0
    .param p1, "delay"    # J

    .line 66
    iput-wide p1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    .line 67
    return-void
.end method
