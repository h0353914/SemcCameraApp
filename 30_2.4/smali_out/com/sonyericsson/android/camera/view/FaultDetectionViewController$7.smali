.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$7;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->showHintTextFaultDetectionSnapshot(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)V
    .registers 2

    .line 584
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$7;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 587
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$7;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->hideFaultPreview()V

    return-void
.end method
