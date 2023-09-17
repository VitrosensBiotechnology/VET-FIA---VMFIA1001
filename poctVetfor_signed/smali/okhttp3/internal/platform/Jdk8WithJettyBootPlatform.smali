.class Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "Jdk8WithJettyBootPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;
    }
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final removeMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p1, "putMethod"    # Ljava/lang/reflect/Method;
    .param p2, "getMethod"    # Ljava/lang/reflect/Method;
    .param p3, "removeMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 37
    .local p4, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 38
    iput-object p1, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 39
    iput-object p2, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 40
    iput-object p3, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    .line 41
    iput-object p4, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 42
    iput-object p5, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    .line 43
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 12

    .line 84
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.eclipse.jetty.alpn.ALPN"

    .line 85
    .local v1, "alpnClassName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 86
    .local v3, "alpnClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "$Provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 87
    .local v4, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$ClientProvider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    .line 88
    .local v10, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$ServerProvider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    .line 89
    .local v11, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "put"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljavax/net/ssl/SSLSocket;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    aput-object v4, v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 90
    .local v7, "putMethod":Ljava/lang/reflect/Method;
    const-string v5, "get"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v8, Ljavax/net/ssl/SSLSocket;

    aput-object v8, v6, v9

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 91
    .local v8, "getMethod":Ljava/lang/reflect/Method;
    const-string v5, "remove"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v6, Ljavax/net/ssl/SSLSocket;

    aput-object v6, v2, v9

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 92
    .local v9, "removeMethod":Ljava/lang/reflect/Method;
    new-instance v2, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 94
    .end local v1    # "alpnClassName":Ljava/lang/String;
    .end local v3    # "alpnClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "putMethod":Ljava/lang/reflect/Method;
    .end local v8    # "getMethod":Ljava/lang/reflect/Method;
    .end local v9    # "removeMethod":Ljava/lang/reflect/Method;
    .end local v10    # "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 97
    return-object v0
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 4
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .line 60
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    nop

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "failed to remove ALPN"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    invoke-static {p3}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-class v1, Lokhttp3/internal/platform/Platform;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    iget-object v4, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-instance v4, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;

    invoke-direct {v4, v0}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;-><init>(Ljava/util/List;)V

    invoke-static {v1, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, "alpnProvider":Ljava/lang/Object;
    iget-object v3, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object v1, v2, v6

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "alpnProvider":Ljava/lang/Object;
    nop

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "failed to set ALPN"

    invoke-direct {v2, v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;

    .line 70
    .local v0, "provider":Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;
    iget-boolean v1, v0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->unsupported:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v3, 0x4

    const-string v4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-object v2

    .line 75
    :cond_0
    iget-boolean v1, v0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->unsupported:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    .line 76
    .end local v0    # "provider":Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "failed to get ALPN selected protocol"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
