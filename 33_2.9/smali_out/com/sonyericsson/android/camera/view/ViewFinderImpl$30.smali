.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$30;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setupApplicationNavigator(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/NavigatorContents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 8722
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$30;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 8725
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$30;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->transitionModeOnNavigator(I)V
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)V

    return-void
.end method
