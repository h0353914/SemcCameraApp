.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;
.super Ljava/lang/Object;
.source "ManualIqControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->generateValueItems(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    # invokes: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->applyValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$400(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 264
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    # getter for: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    # invokes: Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-void
.end method
