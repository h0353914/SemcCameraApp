.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$1;
.super Ljava/lang/Object;
.source "WbList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->createIcon(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;

.field final synthetic val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .registers 3

    .line 151
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$1;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 155
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 156
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList$1;->val$item:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    # invokes: Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->updateSelected(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/WbList;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    :cond_13
    return-void
.end method
