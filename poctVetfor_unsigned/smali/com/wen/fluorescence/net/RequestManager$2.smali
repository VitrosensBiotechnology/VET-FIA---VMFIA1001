.class final Lcom/wen/fluorescence/net/RequestManager$2;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/net/RequestManager;->post(Ljava/lang/Object;Ljava/lang/String;Lcom/wen/fluorescence/database/TestResult;Lcom/wen/fluorescence/net/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/wen/fluorescence/net/CallBack;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/net/CallBack;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/wen/fluorescence/net/RequestManager$2;->val$callBack:Lcom/wen/fluorescence/net/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 138
    invoke-static {}, Lcom/wen/fluorescence/net/RequestManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/wen/fluorescence/net/RequestManager$2$1;

    invoke-direct {v1, p0, p2}, Lcom/wen/fluorescence/net/RequestManager$2$1;-><init>(Lcom/wen/fluorescence/net/RequestManager$2;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "json":Ljava/lang/String;
    const-string v1, "okHttp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/wen/fluorescence/net/RequestManager;->access$000()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/net/RequestManager$2$2;

    invoke-direct {v2, p0, v0}, Lcom/wen/fluorescence/net/RequestManager$2$2;-><init>(Lcom/wen/fluorescence/net/RequestManager$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method
