.class public Lorg/apache/log4j/varia/Roller;
.super Ljava/lang/Object;
.source "Roller.java"


# static fields
.field static cat:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

.field static host:Ljava/lang/String;

.field static port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.varia.Roller"

    invoke-static {v0}, Lorg/apache/log4j/varia/Roller;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/varia/Roller;->cat:Lorg/apache/log4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 41
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 41
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "hostArg"    # Ljava/lang/String;
    .param p1, "portArg"    # Ljava/lang/String;

    .line 81
    sput-object p0, Lorg/apache/log4j/varia/Roller;->host:Ljava/lang/String;

    .line 83
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/log4j/varia/Roller;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Second argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " is not a valid integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/varia/Roller;->usage(Ljava/lang/String;)V

    .line 88
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;

    .line 61
    invoke-static {}, Lorg/apache/log4j/BasicConfigurator;->configure()V

    .line 63
    const/4 v0, 0x2

    array-length v1, p0

    if-ne v1, v0, :cond_0

    .line 64
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lorg/apache/log4j/varia/Roller;->init(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    const-string v0, "Wrong number of arguments."

    invoke-static {v0}, Lorg/apache/log4j/varia/Roller;->usage(Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-static {}, Lorg/apache/log4j/varia/Roller;->roll()V

    .line 69
    return-void
.end method

.method static roll()V
    .locals 8

    .line 93
    const/4 v0, 0x2

    :try_start_0
    new-instance v1, Ljava/net/Socket;

    sget-object v2, Lorg/apache/log4j/varia/Roller;->host:Ljava/lang/String;

    sget v3, Lorg/apache/log4j/varia/Roller;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 94
    .local v1, "socket":Ljava/net/Socket;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    .local v2, "dos":Ljava/io/DataOutputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    .local v3, "dis":Ljava/io/DataInputStream;
    const-string v4, "RollOver"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "rc":Ljava/lang/String;
    const-string v5, "OK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    sget-object v5, Lorg/apache/log4j/varia/Roller;->cat:Lorg/apache/log4j/Logger;

    const-string v6, "Roll over signal acknowledged by remote appender."

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_0
    sget-object v5, Lorg/apache/log4j/varia/Roller;->cat:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unexpected return code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " from remote entity."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 102
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "rc":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/apache/log4j/varia/Roller;->cat:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not send roll signal on host "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lorg/apache/log4j/varia/Roller;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v4, Lorg/apache/log4j/varia/Roller;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 109
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 110
    return-void
.end method

.method static usage(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 73
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Usage: java "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.apache.log4j.varia.Roller"

    invoke-static {v2}, Lorg/apache/log4j/varia/Roller;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "host_name port_number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 77
    return-void
.end method
