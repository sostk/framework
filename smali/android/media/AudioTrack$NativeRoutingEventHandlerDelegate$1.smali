.class Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

.field final synthetic val$listener:Landroid/media/AudioTrack$OnRoutingChangedListener;

.field final synthetic val$track:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$track"    # Landroid/media/AudioTrack;
    .param p4, "val$listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;

    .prologue
    iput-object p1, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;->this$1:Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    iput-object p4, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnRoutingChangedListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown native event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->-wrap0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnRoutingChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnRoutingChangedListener;

    iget-object v1, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    invoke-interface {v0, v1}, Landroid/media/AudioTrack$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioTrack;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
