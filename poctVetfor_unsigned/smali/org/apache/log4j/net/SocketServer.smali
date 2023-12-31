.class public Lorg/apache/log4j/net/SocketServer;
.super Ljava/lang/Object;
.source "SocketServer.java"


# static fields
.field static CONFIG_FILE_EXT:Ljava/lang/String;

.field static GENERIC:Ljava/lang/String;

.field static cat:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

.field static port:I

.field static server:Lorg/apache/log4j/net/SocketServer;


# instance fields
.field dir:Ljava/io/File;

.field genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

.field hierarchyMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-string v0, "generic"

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->GENERIC:Ljava/lang/String;

    .line 91
    const-string v0, ".lcf"

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->CONFIG_FILE_EXT:Ljava/lang/String;

    .line 93
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.SocketServer"

    invoke-static {v0}, Lorg/apache/log4j/net/SocketServer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lorg/apache/log4j/net/SocketServer;->dir:Ljava/io/File;

    .line 165
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketServer;->hierarchyMap:Ljava/util/Hashtable;

    .line 166
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 93
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "portStr"    # Ljava/lang/String;
    .param p1, "configFile"    # Ljava/lang/String;
    .param p2, "dirStr"    # Ljava/lang/String;

    .line 145
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/log4j/net/SocketServer;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 149
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not interpret port number ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/net/SocketServer;->usage(Ljava/lang/String;)V

    .line 152
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-static {p1}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "] is not a directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/net/SocketServer;->usage(Ljava/lang/String;)V

    .line 158
    :cond_0
    new-instance v1, Lorg/apache/log4j/net/SocketServer;

    invoke-direct {v1, v0}, Lorg/apache/log4j/net/SocketServer;-><init>(Ljava/io/File;)V

    sput-object v1, Lorg/apache/log4j/net/SocketServer;->server:Lorg/apache/log4j/net/SocketServer;

    .line 159
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "argv"    # [Ljava/lang/String;

    .line 105
    const/4 v0, 0x3

    array-length v1, p0

    if-ne v1, v0, :cond_0

    .line 106
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/net/SocketServer;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    const-string v0, "Wrong number of arguments."

    invoke-static {v0}, Lorg/apache/log4j/net/SocketServer;->usage(Ljava/lang/String;)V

    .line 111
    :goto_0
    :try_start_0
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Listening on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v2, Lorg/apache/log4j/net/SocketServer;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 112
    new-instance v0, Ljava/net/ServerSocket;

    sget v1, Lorg/apache/log4j/net/SocketServer;->port:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 114
    .local v0, "serverSocket":Ljava/net/ServerSocket;
    :goto_1
    sget-object v1, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    const-string v2, "Waiting to accept a new client."

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 116
    .local v1, "socket":Ljava/net/Socket;
    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 117
    .local v2, "inetAddress":Ljava/net/InetAddress;
    sget-object v3, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Connected to client at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 119
    sget-object v3, Lorg/apache/log4j/net/SocketServer;->server:Lorg/apache/log4j/net/SocketServer;

    iget-object v3, v3, Lorg/apache/log4j/net/SocketServer;->hierarchyMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/spi/LoggerRepository;

    .line 120
    .local v3, "h":Lorg/apache/log4j/spi/LoggerRepository;
    if-nez v3, :cond_1

    .line 121
    sget-object v4, Lorg/apache/log4j/net/SocketServer;->server:Lorg/apache/log4j/net/SocketServer;

    invoke-virtual {v4, v2}, Lorg/apache/log4j/net/SocketServer;->configureHierarchy(Ljava/net/InetAddress;)Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v4

    move-object v3, v4

    .line 124
    :cond_1
    sget-object v4, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    const-string v5, "Starting new socket node."

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 125
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lorg/apache/log4j/net/SocketNode;

    invoke-direct {v5, v1, v3}, Lorg/apache/log4j/net/SocketNode;-><init>(Ljava/net/Socket;Lorg/apache/log4j/spi/LoggerRepository;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "h":Lorg/apache/log4j/spi/LoggerRepository;
    goto :goto_1

    .line 128
    .end local v0    # "serverSocket":Ljava/net/ServerSocket;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method static usage(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 136
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Usage: java "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.apache.log4j.net.SocketServer"

    invoke-static {v2}, Lorg/apache/log4j/net/SocketServer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " port configFile directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 140
    return-void
.end method


# virtual methods
.method configureHierarchy(Ljava/net/InetAddress;)Lorg/apache/log4j/spi/LoggerRepository;
    .locals 7
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 171
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Locating configuration file for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "s":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "i":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 177
    sget-object v2, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not parse the inetAddress ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, "]. Using default hierarchy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketServer;->genericHierarchy()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v2

    return-object v2

    .line 181
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/log4j/net/SocketServer;->dir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lorg/apache/log4j/net/SocketServer;->CONFIG_FILE_EXT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v3, "configFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    new-instance v4, Lorg/apache/log4j/Hierarchy;

    new-instance v5, Lorg/apache/log4j/spi/RootLogger;

    sget-object v6, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-direct {v5, v6}, Lorg/apache/log4j/spi/RootLogger;-><init>(Lorg/apache/log4j/Level;)V

    invoke-direct {v4, v5}, Lorg/apache/log4j/Hierarchy;-><init>(Lorg/apache/log4j/Logger;)V

    .line 186
    .local v4, "h":Lorg/apache/log4j/Hierarchy;
    iget-object v5, p0, Lorg/apache/log4j/net/SocketServer;->hierarchyMap:Ljava/util/Hashtable;

    invoke-virtual {v5, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v5, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v5}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 190
    return-object v4

    .line 192
    .end local v4    # "h":Lorg/apache/log4j/Hierarchy;
    :cond_1
    sget-object v4, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Could not find config file ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketServer;->genericHierarchy()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v4

    return-object v4
.end method

.method genericHierarchy()Lorg/apache/log4j/spi/LoggerRepository;
    .locals 4

    .line 199
    iget-object v0, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/log4j/net/SocketServer;->dir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lorg/apache/log4j/net/SocketServer;->GENERIC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/log4j/net/SocketServer;->CONFIG_FILE_EXT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Lorg/apache/log4j/Hierarchy;

    new-instance v2, Lorg/apache/log4j/spi/RootLogger;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-direct {v2, v3}, Lorg/apache/log4j/spi/RootLogger;-><init>(Lorg/apache/log4j/Level;)V

    invoke-direct {v1, v2}, Lorg/apache/log4j/Hierarchy;-><init>(Lorg/apache/log4j/Logger;)V

    iput-object v1, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    .line 203
    new-instance v1, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v1}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-virtual {v1, v2, v3}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    goto :goto_0

    .line 205
    :cond_0
    sget-object v1, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not find config file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "]. Will use the default hierarchy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 207
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    .line 210
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    return-object v0
.end method
