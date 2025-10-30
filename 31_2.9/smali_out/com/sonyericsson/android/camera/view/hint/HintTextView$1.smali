.class Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;
.super Ljava/lang/Object;
.source "HintTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->sendAccessibilityEvent(I)V

    return-void
.end method
