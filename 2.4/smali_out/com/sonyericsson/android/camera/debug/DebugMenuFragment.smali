.class public final Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DebugMenuFragment.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0003J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u0008\u0010\u000b\u001a\u00020\u0005H\u0002J\u0008\u0010\u000c\u001a\u00020\u0005H\u0002J\u0008\u0010\r\u001a\u00020\u0005H\u0002J\u0008\u0010\u000e\u001a\u00020\u0005H\u0002J\u0008\u0010\u000f\u001a\u00020\u0005H\u0002J\u0012\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u001c\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u0005H\u0016J\u0008\u0010 \u001a\u00020\u0005H\u0016J\u0018\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001aH\u0016J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0002J\u0008\u0010(\u001a\u00020\u0005H\u0002\u00a8\u0006)"
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "()V",
        "clearFingerPrint",
        "",
        "initialize",
        "initializeAutoPowerOff",
        "initializeEmulateSideTouch",
        "initializeForceSettingMigration",
        "initializeInHouseDetectWhileMoving",
        "initializeLowPowerMode",
        "initializePredictiveCaptureOn",
        "initializeSaveEyeBlink",
        "initializeSaveInHouse",
        "initializeTransferAndTagging",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onCreatePreferences",
        "rootKey",
        "",
        "onOptionsItemSelected",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onPause",
        "onResume",
        "onSharedPreferenceChanged",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "key",
        "reset",
        "context",
        "Landroid/content/Context;",
        "showKillProcessToast",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method public static final synthetic access$clearFingerPrint(Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->clearFingerPrint()V

    return-void
.end method

.method private final clearFingerPrint()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 211
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_2a

    aget-object v4, v0, v3

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-static {v5, v4, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 216
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "android.os.Build.FINGERPRINT"

    .line 217
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_29
    return-void

    .line 219
    :cond_2a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e03e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final initialize()V
    .registers 1

    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeAutoPowerOff()V

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeLowPowerMode()V

    .line 109
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeForceSettingMigration()V

    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializePredictiveCaptureOn()V

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeEmulateSideTouch()V

    .line 112
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeInHouseDetectWhileMoving()V

    .line 113
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeSaveEyeBlink()V

    .line 114
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeSaveInHouse()V

    .line 115
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeTransferAndTagging()V

    return-void
.end method

.method private final initializeAutoPowerOff()V
    .registers 5

    const-string v0, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    .line 119
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_24

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferenceScreen"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    const/4 v3, 0x0

    .line 122
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void

    .line 119
    :cond_24
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initializeEmulateSideTouch()V
    .registers 5

    const-string v0, "KEY_DEBUG_EMULATE_SIDETOUCH"

    .line 152
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_24

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 154
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferenceScreen"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "KEY_DEBUG_EMULATE_SIDETOUCH"

    const/4 v3, 0x0

    .line 155
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void

    .line 152
    :cond_24
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initializeForceSettingMigration()V
    .registers 3

    const-string v0, "KEY_DEBUG_FORCE_MIGRATE_SETTINGS"

    .line 135
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "settingMigration"

    .line 137
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment$initializeForceSettingMigration$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment$initializeForceSettingMigration$1;-><init>(Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;)V

    check-cast v1, Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private final initializeInHouseDetectWhileMoving()V
    .registers 5

    const-string v0, "KEY_DEBUG_IN_HOUSE_DETECT_WHILE_MOVING"

    .line 160
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_24

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferenceScreen"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "KEY_DEBUG_IN_HOUSE_DETECT_WHILE_MOVING"

    const/4 v3, 0x0

    .line 163
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void

    .line 160
    :cond_24
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initializeLowPowerMode()V
    .registers 5

    const-string v0, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    .line 127
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_24

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferenceScreen"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    const/4 v3, 0x0

    .line 130
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void

    .line 127
    :cond_24
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initializePredictiveCaptureOn()V
    .registers 5

    const-string v0, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    .line 144
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_24

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferenceScreen"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    const/4 v3, 0x0

    .line 147
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void

    .line 144
    :cond_24
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initializeSaveEyeBlink()V
    .registers 5

    const-string v0, "KEY_DEBUG_SAVE_EYE_BLINK"

    .line 168
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_24

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 170
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferenceScreen"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "KEY_DEBUG_SAVE_EYE_BLINK"

    const/4 v3, 0x0

    .line 171
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void

    .line 168
    :cond_24
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initializeSaveInHouse()V
    .registers 5

    const-string v0, "KEY_DEBUG_SAVE_IN_HOUSE"

    .line 176
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_24

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferenceScreen"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "KEY_DEBUG_SAVE_IN_HOUSE"

    const/4 v3, 0x0

    .line 179
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void

    .line 176
    :cond_24
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initializeTransferAndTagging()V
    .registers 5

    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 185
    instance-of v1, v0, Landroid/content/Context;

    if-eqz v1, :cond_14

    .line 186
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    const-string v1, "KEY_DEBUG_SUPPORT_T_AND_T"

    .line 188
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_38

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "preferenceScreen"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "KEY_DEBUG_SUPPORT_T_AND_T"

    .line 191
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void

    .line 188
    :cond_38
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final reset(Landroid/content/Context;)V
    .registers 3

    .line 196
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->reset(Landroid/content/Context;)V

    .line 197
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initialize()V

    return-void
.end method

.method private final showKillProcessToast()V
    .registers 4

    .line 201
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e03e9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/high16 v0, 0x7f0c0000

    .line 44
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "com.sonyericsson.android.camera.shared_preferences_debug"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const p1, 0x7f110002

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initialize()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    instance-of v1, v0, Landroid/content/Context;

    if-eqz v1, :cond_1a

    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x7f090092

    if-eq p1, v1, :cond_17

    goto :goto_1a

    .line 51
    :cond_17
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->reset(Landroid/content/Context;)V

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .registers 3

    .line 64
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferenceScreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_18

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_18
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 59
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferenceScreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_18

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_18
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_136

    goto/16 :goto_134

    :sswitch_14
    const-string v0, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 75
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_33

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 76
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->showKillProcessToast()V

    goto/16 :goto_134

    .line 75
    :cond_33
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_3b
    const-string v0, "KEY_DEBUG_EMULATE_SIDETOUCH"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 84
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_57

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 85
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_134

    .line 84
    :cond_57
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_5f
    const-string v0, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 71
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7b

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 72
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_134

    .line 71
    :cond_7b
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_83
    const-string v0, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 80
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9f

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 81
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_134

    .line 80
    :cond_9f
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_a7
    const-string v0, "KEY_DEBUG_SUPPORT_T_AND_T"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 100
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_c3

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 101
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_134

    .line 100
    :cond_c3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_cb
    const-string v0, "KEY_DEBUG_SAVE_IN_HOUSE"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 96
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_e6

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 97
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_134

    .line 96
    :cond_e6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_ee
    const-string v0, "KEY_DEBUG_IN_HOUSE_DETECT_WHILE_MOVING"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 88
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_109

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 89
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_134

    .line 88
    :cond_109
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_111
    const-string v0, "KEY_DEBUG_SAVE_EYE_BLINK"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 92
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_12c

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 93
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_134

    .line 92
    :cond_12c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_134
    :goto_134
    return-void

    nop

    :sswitch_data_136
    .sparse-switch
        -0x42b44328 -> :sswitch_111
        -0x2bbc0075 -> :sswitch_ee
        -0x120beb24 -> :sswitch_cb
        -0x4f9587b -> :sswitch_a7
        -0x310e896 -> :sswitch_83
        0x3bf72c48 -> :sswitch_5f
        0x715932b0 -> :sswitch_3b
        0x77f1fa8b -> :sswitch_14
    .end sparse-switch
.end method
