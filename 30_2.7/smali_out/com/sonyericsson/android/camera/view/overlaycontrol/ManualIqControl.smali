.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;
.source "ManualIqControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;
    }
.end annotation


# static fields
.field public static final KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntValueAccessor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

.field private mOrientation:I

.field private mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field private final mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

.field private final mValueAccessor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "+",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

.field private final mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    .line 57
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sonyericsson/android/camera/setting/UiControlSettings;",
            "Landroid/graphics/Rect;",
            "Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Iso;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Ev;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;)V

    .line 65
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    .line 68
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mIntValueAccessor:Ljava/util/Map;

    .line 70
    new-instance p5, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;

    invoke-direct {p5, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)V

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    const/4 p5, 0x2

    .line 122
    iput p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOrientation:I

    .line 138
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    .line 139
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    .line 140
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mIntValueAccessor:Ljava/util/Map;

    sget-object p5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, p5, p12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    .line 147
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->create()Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Ljava/util/Map;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->createAdapter(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->applyValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method private applyValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    .line 236
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    .line 237
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private createAdapter(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .registers 7

    .line 205
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOnSlideListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mIntValueAccessor:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlWidgetFactory;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;Ljava/util/Map;)V

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;)V

    .line 207
    sget-object p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->KEYS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 209
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 211
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_39

    .line 213
    array-length v2, v2

    if-le v2, v4, :cond_37

    goto :goto_39

    :cond_37
    const/4 v2, 0x0

    move v4, v2

    .line 216
    :cond_39
    :goto_39
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v4, :cond_14

    .line 218
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    .line 219
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const-string v3, ""

    .line 220
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 221
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    .line 223
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->generateValueItems(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 224
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->item(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    goto :goto_61

    .line 227
    :cond_71
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_14

    :cond_79
    return-object v0
.end method

.method private generateValueItems(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    return-object v0

    .line 245
    :cond_e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->values()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 246
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 248
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_2d
    if-ge v5, v3, :cond_71

    aget-object v6, v1, v5

    if-eqz v6, :cond_6e

    if-ne v2, v6, :cond_37

    const/4 v7, 0x1

    goto :goto_38

    :cond_37
    move v7, v4

    .line 251
    :goto_38
    sget-object v8, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 252
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v9

    if-nez v9, :cond_42

    .line 253
    sget-object v8, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 257
    :cond_42
    invoke-static {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 258
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 259
    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v6

    invoke-virtual {v9, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    new-instance v9, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;

    invoke-direct {v9, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)V

    .line 260
    invoke-virtual {v6, v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 267
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 268
    invoke-virtual {v6, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 270
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_71
    return-object v0
.end method

.method private update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .registers 4

    .line 175
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 178
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1b

    const-string p1, "Re-create view because setting structure is modified."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    :cond_1b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mViewFactory:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->create()Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    .line 180
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mValueAccessor:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_38

    const-string p1, "Fail to fetch setting structure."

    .line 181
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 183
    :cond_38
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setSensorOrientation(I)V

    .line 185
    :cond_3f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->setLastManualIqControlTab(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Z)V

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->save()V

    .line 159
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->disable()V

    return-void
.end method

.method public enable()V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mUiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mCapturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/setting/UiControlSettings;->getLastManualIqControlTab(Z)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 153
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->enable()V

    return-void
.end method

.method protected onOrientationChanged(I)V
    .registers 3

    .line 200
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mOrientation:I

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setSensorOrientation(I)V

    return-void
.end method

.method protected onVisibilityUpdated()V
    .registers 3

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mSelectedTab:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->update(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setVisibility(I)V

    goto :goto_19

    .line 194
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setVisibility(I)V

    :goto_19
    return-void
.end method

.method public refresh()V
    .registers 1

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->onVisibilityUpdated()V

    return-void
.end method

.method public release()V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 171
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
