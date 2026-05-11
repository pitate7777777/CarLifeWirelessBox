.class public Le/c/a/a/v/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Le/c/a/a/v/v;

.field public final synthetic f:Le/c/a/a/v/g;


# direct methods
.method public constructor <init>(Le/c/a/a/v/g;Le/c/a/a/v/v;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/v/l;->f:Le/c/a/a/v/g;

    iput-object p2, p0, Le/c/a/a/v/l;->e:Le/c/a/a/v/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le/c/a/a/v/l;->f:Le/c/a/a/v/g;

    invoke-virtual {p1}, Le/c/a/a/v/g;->G0()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->j1()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Le/c/a/a/v/l;->f:Le/c/a/a/v/g;

    .line 1
    iget-object v0, v0, Le/c/a/a/v/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Le/c/a/a/v/l;->f:Le/c/a/a/v/g;

    iget-object v1, p0, Le/c/a/a/v/l;->e:Le/c/a/a/v/v;

    invoke-virtual {v1, p1}, Le/c/a/a/v/v;->g(I)Le/c/a/a/v/s;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/c/a/a/v/g;->I0(Le/c/a/a/v/s;)V

    :cond_0
    return-void
.end method
