.class Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;
.super Ljava/lang/Object;
.source "ModeSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnNewFeatureBarClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$1;)V
    .registers 3

    .line 110
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 113
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    # getter for: Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mOnModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->access$100(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 114
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    # getter for: Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mOnModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->access$100(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;->onNewFeatureBarSelected()V

    :cond_11
    return-void
.end method
