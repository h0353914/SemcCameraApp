.class Lcom/sonyericsson/android/camera/FeatureListFragment$1;
.super Ljava/lang/Object;
.source "FeatureListFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/FeatureListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/FeatureListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/FeatureListFragment;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/camera/FeatureListFragment$1;->this$0:Lcom/sonyericsson/android/camera/FeatureListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 7

    .line 58
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p1

    .line 59
    invoke-interface {p1, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 60
    iget-object p2, p0, Lcom/sonyericsson/android/camera/FeatureListFragment$1;->this$0:Lcom/sonyericsson/android/camera/FeatureListFragment;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/FeatureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    const/4 p3, 0x0

    if-nez p2, :cond_16

    return p3

    .line 65
    :cond_16
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string p5, "key_tutorial_type"

    .line 66
    invoke-virtual {p4, p5, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "key_orientation"

    .line 67
    iget-object p5, p0, Lcom/sonyericsson/android/camera/FeatureListFragment$1;->this$0:Lcom/sonyericsson/android/camera/FeatureListFragment;

    # getter for: Lcom/sonyericsson/android/camera/FeatureListFragment;->mOrientation:I
    invoke-static {p5}, Lcom/sonyericsson/android/camera/FeatureListFragment;->access$000(Lcom/sonyericsson/android/camera/FeatureListFragment;)I

    move-result p5

    invoke-virtual {p4, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    new-instance p1, Lcom/sonyericsson/android/camera/FeatureContentFragment;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/FeatureContentFragment;-><init>()V

    .line 69
    invoke-virtual {p1, p4}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 71
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const/16 p4, 0x1001

    .line 72
    invoke-virtual {p2, p4}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    const p4, 0x7f090088

    const-string p5, "feature_content_fragment"

    .line 73
    invoke-virtual {p2, p4, p1, p5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 75
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 76
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return p3
.end method
