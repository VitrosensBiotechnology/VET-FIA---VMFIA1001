.class final Lokhttp3/internal/http2/Http2Connection$PingRunnable;
.super Lokhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PingRunnable"
.end annotation


# instance fields
.field final payload1:I

.field final payload2:I

.field final reply:Z

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;ZII)V
    .locals 4
    .param p1, "this$0"    # Lokhttp3/internal/http2/Http2Connection;
    .param p2, "reply"    # Z
    .param p3, "payload1"    # I
    .param p4, "payload2"    # I

    .line 362
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 363
    const-string v0, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    .line 365
    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    .line 366
    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    .line 367
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 370
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    .line 371
    return-void
.end method
