.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker$1;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;)V
    .registers 2

    .line 1869
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker$1;->this$1:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1872
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker$1;->this$1:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->notifyFaceReflected()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->access$3600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;)V

    return-void
.end method
