.class final Lcom/wen/fluorescence/serialport/Protocol$5;
.super Ljava/lang/Object;
.source "Protocol.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/serialport/Protocol;->setHeadSwitch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mTX:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/wen/fluorescence/serialport/Protocol$5;->val$mTX:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCallBack()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/wen/fluorescence/serialport/Protocol$5;->val$mTX:[B

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/CommActivity;->SendData([B)V

    .line 287
    return-void
.end method
