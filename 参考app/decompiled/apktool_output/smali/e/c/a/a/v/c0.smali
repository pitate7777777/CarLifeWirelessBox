.class public Le/c/a/a/v/c0;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/v/c0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Le/c/a/a/v/c0$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Le/c/a/a/v/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/v/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/c/a/a/v/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/v/g<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Le/c/a/a/v/c0;->c:Le/c/a/a/v/g;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Le/c/a/a/v/c0;->c:Le/c/a/a/v/g;

    .line 1
    iget-object v0, v0, Le/c/a/a/v/g;->c0:Le/c/a/a/v/a;

    .line 2
    iget v0, v0, Le/c/a/a/v/a;->i:I

    return v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 7

    check-cast p1, Le/c/a/a/v/c0$a;

    .line 1
    iget-object v0, p0, Le/c/a/a/v/c0;->c:Le/c/a/a/v/g;

    .line 2
    iget-object v0, v0, Le/c/a/a/v/g;->c0:Le/c/a/a/v/a;

    .line 3
    iget-object v0, v0, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    .line 4
    iget v0, v0, Le/c/a/a/v/s;->g:I

    add-int/2addr v0, p2

    .line 5
    iget-object p2, p1, Le/c/a/a/v/c0$a;->t:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Le/c/a/a/i;->mtrl_picker_navigate_to_year_description:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p1, Le/c/a/a/v/c0$a;->t:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%d"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Le/c/a/a/v/c0$a;->t:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Le/c/a/a/v/c0;->c:Le/c/a/a/v/g;

    .line 6
    iget-object p2, p2, Le/c/a/a/v/g;->f0:Le/c/a/a/v/c;

    .line 7
    invoke-static {}, Le/c/a/a/v/a0;->f()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p2, Le/c/a/a/v/c;->f:Le/c/a/a/v/b;

    goto :goto_0

    :cond_0
    iget-object v2, p2, Le/c/a/a/v/c;->d:Le/c/a/a/v/b;

    :goto_0
    iget-object v4, p0, Le/c/a/a/v/c0;->c:Le/c/a/a/v/g;

    .line 8
    iget-object v4, v4, Le/c/a/a/v/g;->b0:Le/c/a/a/v/d;

    .line 9
    invoke-interface {v4}, Le/c/a/a/v/d;->s()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v0, :cond_1

    iget-object v2, p2, Le/c/a/a/v/c;->e:Le/c/a/a/v/b;

    goto :goto_1

    :cond_2
    iget-object p2, p1, Le/c/a/a/v/c0$a;->t:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Le/c/a/a/v/b;->b(Landroid/widget/TextView;)V

    iget-object p1, p1, Le/c/a/a/v/c0$a;->t:Landroid/widget/TextView;

    .line 10
    new-instance p2, Le/c/a/a/v/b0;

    invoke-direct {p2, p0, v0}, Le/c/a/a/v/b0;-><init>(Le/c/a/a/v/c0;I)V

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Le/c/a/a/h;->mtrl_calendar_year:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Le/c/a/a/v/c0$a;

    invoke-direct {p2, p1}, Le/c/a/a/v/c0$a;-><init>(Landroid/widget/TextView;)V

    return-object p2
.end method

.method public g(I)I
    .locals 1

    iget-object v0, p0, Le/c/a/a/v/c0;->c:Le/c/a/a/v/g;

    .line 1
    iget-object v0, v0, Le/c/a/a/v/g;->c0:Le/c/a/a/v/a;

    .line 2
    iget-object v0, v0, Le/c/a/a/v/a;->e:Le/c/a/a/v/s;

    .line 3
    iget v0, v0, Le/c/a/a/v/s;->g:I

    sub-int/2addr p1, v0

    return p1
.end method
