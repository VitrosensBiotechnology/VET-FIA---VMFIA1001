.class Lcom/wen/fluorescence/Fragment/HomeFragment$1$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$1;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    .line 192
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1$2;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1$2;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 201
    return-void
.end method

.method public okListener()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$1$2;->this$1:Lcom/wen/fluorescence/Fragment/HomeFragment$1;

    iget-object v0, v0, Lcom/wen/fluorescence/Fragment/HomeFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 196
    return-void
.end method
