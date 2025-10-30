.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;
.super Ljava/lang/Object;
.source "TutorialController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

.field final synthetic val$openType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;)V
    .registers 3

    .line 216
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;->val$openType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;->val$openType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isFeatureListType:Z

    if-eqz v0, :cond_c

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->show()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    goto :goto_11

    .line 222
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->startSlideInAnimation()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->access$100(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    :goto_11
    return-void
.end method
