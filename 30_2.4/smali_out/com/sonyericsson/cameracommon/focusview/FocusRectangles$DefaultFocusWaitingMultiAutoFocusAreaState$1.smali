.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState$1;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;->handleSetMultiAutoFocusArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;)V
    .registers 2

    .line 1231
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState$1;->this$1:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1234
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState$1;->this$1:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState$1;->this$1:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;->mInZoom:Z
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;->access$3000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusWaitingMultiAutoFocusAreaState;)Z

    move-result v1

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->FOCUSING:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->showMultiAutoFocusingView(ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V

    return-void
.end method
