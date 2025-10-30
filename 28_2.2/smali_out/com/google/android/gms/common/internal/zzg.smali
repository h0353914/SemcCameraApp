.class public final Lcom/google/android/gms/common/internal/zzg;
.super Ljava/lang/Object;


# direct methods
.method public static zzc(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_8d

    const/4 v0, 0x7

    if-eq p1, v0, :cond_86

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7b

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_70

    packed-switch p1, :pswitch_data_94

    packed-switch p1, :pswitch_data_9e

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_21
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_updating_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2c
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_33
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_api_unavailable_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3e
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_49
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_update_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_54
    invoke-static {p0}, Lcom/google/android/gms/internal/zzmq;->zzb(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_65

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_tablet:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_phone:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_70
    sget p1, Lcom/google/android/gms/R$string;->common_android_wear_update_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7b
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_86
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8d
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_54
        :pswitch_49
        :pswitch_3e
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x10
        :pswitch_33
        :pswitch_2c
        :pswitch_21
    .end packed-switch
.end method

.method public static zzd(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_8d

    const/4 v0, 0x7

    if-eq p1, v0, :cond_86

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7b

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_70

    packed-switch p1, :pswitch_data_94

    packed-switch p1, :pswitch_data_9e

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_21
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_updating_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2c
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_33
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_api_unavailable_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3e
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_49
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_update_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_54
    invoke-static {p0}, Lcom/google/android/gms/internal/zzmq;->zzb(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_65

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_tablet:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_phone:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_70
    sget p1, Lcom/google/android/gms/R$string;->common_android_wear_notification_needs_update_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7b
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_86
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8d
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_54
        :pswitch_49
        :pswitch_3e
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x10
        :pswitch_33
        :pswitch_2c
        :pswitch_21
    .end packed-switch
.end method

.method public static final zzg(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_73

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_76

    packed-switch p1, :pswitch_data_90

    const-string p0, "GoogleApiAvailability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_22
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_26
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_updating_title:I

    :goto_28
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2d
    const-string p1, "GoogleApiAvailability"

    const-string v0, "The specified account could not be signed in."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_title:I

    goto :goto_28

    :pswitch_37
    const-string p0, "GoogleApiAvailability"

    const-string p1, "One of the API components you attempted to connect to is not available."

    goto :goto_22

    :pswitch_3c
    const-string p0, "GoogleApiAvailability"

    const-string p1, "The application is not licensed to the user."

    goto :goto_22

    :pswitch_41
    const-string p0, "GoogleApiAvailability"

    const-string p1, "Developer error occurred. Please see logs for detailed information"

    goto :goto_22

    :pswitch_46
    const-string p1, "GoogleApiAvailability"

    const-string v0, "Google Play services is invalid. Cannot recover."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_title:I

    goto :goto_28

    :pswitch_50
    const-string p0, "GoogleApiAvailability"

    const-string p1, "Internal error occurred. Please see logs for detailed information"

    goto :goto_22

    :pswitch_55
    const-string p1, "GoogleApiAvailability"

    const-string v0, "Network error occurred. Please retry request later."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_title:I

    goto :goto_28

    :pswitch_5f
    const-string p1, "GoogleApiAvailability"

    const-string v0, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_title:I

    goto :goto_28

    :pswitch_69
    return-object v0

    :pswitch_6a
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_title:I

    goto :goto_28

    :pswitch_6d
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_update_title:I

    goto :goto_28

    :pswitch_70
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_title:I

    goto :goto_28

    :cond_73
    sget p1, Lcom/google/android/gms/R$string;->common_android_wear_update_title:I

    goto :goto_28

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_69
        :pswitch_5f
        :pswitch_69
        :pswitch_55
        :pswitch_50
        :pswitch_46
        :pswitch_41
        :pswitch_3c
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x10
        :pswitch_37
        :pswitch_2d
        :pswitch_26
    .end packed-switch
.end method

.method public static zzh(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_19

    packed-switch p1, :pswitch_data_1c

    const p1, 0x104000a

    :goto_e
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_button:I

    goto :goto_e

    :pswitch_16
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_button:I

    goto :goto_e

    :cond_19
    :pswitch_19
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_update_button:I

    goto :goto_e

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method

.method public static final zzi(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_73

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_76

    packed-switch p1, :pswitch_data_90

    const-string p0, "GoogleApiAvailability"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_22
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_26
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_updating_title:I

    :goto_28
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2d
    const-string p1, "GoogleApiAvailability"

    const-string v0, "The specified account could not be signed in."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_sign_in_failed_title:I

    goto :goto_28

    :pswitch_37
    const-string p0, "GoogleApiAvailability"

    const-string p1, "One of the API components you attempted to connect to is not available."

    goto :goto_22

    :pswitch_3c
    const-string p0, "GoogleApiAvailability"

    const-string p1, "The application is not licensed to the user."

    goto :goto_22

    :pswitch_41
    const-string p0, "GoogleApiAvailability"

    const-string p1, "Developer error occurred. Please see logs for detailed information"

    goto :goto_22

    :pswitch_46
    const-string p1, "GoogleApiAvailability"

    const-string v0, "Google Play services is invalid. Cannot recover."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_title:I

    goto :goto_28

    :pswitch_50
    const-string p0, "GoogleApiAvailability"

    const-string p1, "Internal error occurred. Please see logs for detailed information"

    goto :goto_22

    :pswitch_55
    const-string p1, "GoogleApiAvailability"

    const-string v0, "Network error occurred. Please retry request later."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_network_error_title:I

    goto :goto_28

    :pswitch_5f
    const-string p1, "GoogleApiAvailability"

    const-string v0, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_invalid_account_title:I

    goto :goto_28

    :pswitch_69
    return-object v0

    :pswitch_6a
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_title:I

    goto :goto_28

    :pswitch_6d
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_update_title:I

    goto :goto_28

    :pswitch_70
    sget p1, Lcom/google/android/gms/R$string;->common_google_play_services_install_title:I

    goto :goto_28

    :cond_73
    sget p1, Lcom/google/android/gms/R$string;->common_android_wear_update_title:I

    goto :goto_28

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_69
        :pswitch_5f
        :pswitch_69
        :pswitch_55
        :pswitch_50
        :pswitch_46
        :pswitch_41
        :pswitch_3c
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x10
        :pswitch_37
        :pswitch_2d
        :pswitch_26
    .end packed-switch
.end method
