.class Lcom/wen/fluorescence/net/CHRequestManager$3$1;
.super Ljava/lang/Object;
.source "CHRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/net/CHRequestManager$3;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/net/CHRequestManager$3;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/net/CHRequestManager$3;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/net/CHRequestManager$3;

    .line 322
    iput-object p1, p0, Lcom/wen/fluorescence/net/CHRequestManager$3$1;->this$0:Lcom/wen/fluorescence/net/CHRequestManager$3;

    iput-object p2, p0, Lcom/wen/fluorescence/net/CHRequestManager$3$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/wen/fluorescence/net/CHRequestManager$3$1;->this$0:Lcom/wen/fluorescence/net/CHRequestManager$3;

    iget-object v0, v0, Lcom/wen/fluorescence/net/CHRequestManager$3;->val$callBack:Lcom/wen/fluorescence/net/CallBack;

    iget-object v1, p0, Lcom/wen/fluorescence/net/CHRequestManager$3$1;->val$e:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wen/fluorescence/net/CallBack;->onFailure(Ljava/lang/String;)V

    .line 326
    const-string v0, "okHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wen/fluorescence/net/CHRequestManager$3$1;->val$e:Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method
