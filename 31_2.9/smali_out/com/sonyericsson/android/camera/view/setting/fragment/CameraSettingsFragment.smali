.class public Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "CameraSettingsFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;
    }
.end annotation


# static fields
.field private static final STATE_ITEM_LIST_CHANGED_KEY:Ljava/lang/String; = "itemListChanged"

.field private static final STATE_POSITION:Ljava/lang/String; = "position"

.field private static final STATE_SCROLL_Y:Ljava/lang/String; = "scroll_y"

.field private static final STATE_SHOULD_NOT_REMAIN_RECENT:Ljava/lang/String; = "shouldNotRemainRecentTask"


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;

.field private mCategoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowValueSettingDialog:Z

.field private mOnListItemClickListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

.field private mPosition:I

.field private mScrollY:I

.field private mShouldNotRemainRecentTask:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mCategoryItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mScrollY:I

    .line 55
    iput v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mPosition:I

    .line 59
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mIsShowValueSettingDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mOnListItemClickListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;

    return-object p0
.end method

.method public static newInstance(Ljava/util/List;ZZ)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;ZZ)",
            "Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;-><init>()V

    .line 64
    iput-object p0, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mCategoryItems:Ljava/util/List;

    .line 65
    iput-boolean p1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mShouldNotRemainRecentTask:Z

    .line 66
    iput-boolean p2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mIsShowValueSettingDialog:Z

    return-object v0
.end method

.method private saveScrollPosition()V
    .registers 3

    .line 218
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 219
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 220
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 221
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mPosition:I

    const/4 v1, 0x0

    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mScrollY:I

    :cond_2a
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 188
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0002

    .line 189
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->setHasOptionsMenu(Z)V

    const/4 v0, 0x0

    const v1, 0x7f0c004c

    .line 75
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_3e

    const-string p2, "itemListChanged"

    .line 78
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string v1, "position"

    .line 79
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mPosition:I

    const-string v1, "scroll_y"

    .line 80
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mScrollY:I

    const-string v1, "shouldNotRemainRecentTask"

    .line 82
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mShouldNotRemainRecentTask:Z

    if-eqz p2, :cond_3e

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 85
    instance-of p3, p2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    if-eqz p3, :cond_3e

    .line 86
    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;->getLatestItemList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mCategoryItems:Ljava/util/List;

    .line 91
    :cond_3e
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mCategoryItems:Ljava/util/List;

    invoke-direct {p2, p3, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;

    const p2, 0x7f090186

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    .line 93
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f080381

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 94
    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    new-instance p3, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$1;

    invoke-direct {p3, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$1;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 114
    new-instance p3, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$2;

    invoke-direct {p3, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$2;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 122
    :goto_78
    invoke-virtual {p2}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p3

    invoke-interface {p3}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result p3

    if-ge v0, p3, :cond_88

    .line 123
    invoke-virtual {p2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 126
    :cond_88
    iget p3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mPosition:I

    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mScrollY:I

    invoke-virtual {p2, p3, v0}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    return-object p1
.end method

.method public onItemChanged(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    return-void
.end method

.method public onItemListChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mCategoryItems:Ljava/util/List;

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;

    if-eqz v0, :cond_e

    .line 206
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->setSettingItems(Ljava/util/List;)V

    .line 207
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mAdapter:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->notifyDataSetChanged()V

    :cond_e
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900f6

    if-ne v0, v1, :cond_30

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 173
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 174
    const-class v1, Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_key_finish_when_screen_off"

    .line 175
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mShouldNotRemainRecentTask:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x17

    .line 177
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;->FEATURE_LIST_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendShowFeatureListEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;)V

    const/4 p1, 0x1

    return p1

    .line 183
    :cond_30
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 2

    .line 162
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 164
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->saveScrollPosition()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mOnListItemClickListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 133
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 137
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f03a9

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 139
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    if-eqz v1, :cond_1b

    .line 140
    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mOnListItemClickListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    .line 143
    :cond_1b
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mIsShowValueSettingDialog:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mIsShowValueSettingDialog:Z

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$3;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_33
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "position"

    .line 194
    iget v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "scroll_y"

    .line 195
    iget v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mScrollY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "itemListChanged"

    const/4 v1, 0x1

    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "shouldNotRemainRecentTask"

    .line 197
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->mShouldNotRemainRecentTask:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
