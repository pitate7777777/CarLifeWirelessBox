.class public Ld/k/d/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final e:Ld/k/d/r;


# direct methods
.method public constructor <init>(Ld/k/d/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/k/d/p;->e:Ld/k/d/r;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    const-class v0, Ld/k/d/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ld/k/d/l;

    iget-object p2, p0, Ld/k/d/p;->e:Ld/k/d/r;

    invoke-direct {p1, p3, p4, p2}, Ld/k/d/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ld/k/d/r;)V

    return-object p1

    :cond_0
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "class"

    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ld/k/c;->Fragment:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez p2, :cond_2

    sget p2, Ld/k/c;->Fragment_android_name:I

    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    sget v2, Ld/k/c;->Fragment_android_id:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v4, Ld/k/c;->Fragment_android_tag:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_12

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p2}, Ld/k/d/n;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v3, :cond_6

    if-ne v2, v3, :cond_6

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-eq v2, v3, :cond_7

    iget-object v0, p0, Ld/k/d/p;->e:Ld/k/d/r;

    invoke-virtual {v0, v2}, Ld/k/d/r;->G(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    if-eqz v4, :cond_8

    iget-object v0, p0, Ld/k/d/p;->e:Ld/k/d/r;

    invoke-virtual {v0, v4}, Ld/k/d/r;->H(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    if-eq p1, v3, :cond_9

    iget-object v0, p0, Ld/k/d/p;->e:Ld/k/d/r;

    invoke-virtual {v0, p1}, Ld/k/d/r;->G(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_9
    const/4 v1, 0x2

    invoke-static {v1}, Ld/k/d/r;->N(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "onCreateView: id=0x"

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fname="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " existing="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FragmentManager"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v1, 0x1

    if-nez v0, :cond_c

    iget-object v0, p0, Ld/k/d/p;->e:Ld/k/d/r;

    invoke-virtual {v0}, Ld/k/d/r;->K()Ld/k/d/n;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Ld/k/d/n;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->q:Z

    if-eqz v2, :cond_b

    move p3, v2

    goto :goto_2

    :cond_b
    move p3, p1

    :goto_2
    iput p3, v0, Landroidx/fragment/app/Fragment;->z:I

    iput p1, v0, Landroidx/fragment/app/Fragment;->A:I

    iput-object v4, v0, Landroidx/fragment/app/Fragment;->B:Ljava/lang/String;

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->r:Z

    iget-object p1, p0, Ld/k/d/p;->e:Ld/k/d/r;

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->v:Ld/k/d/r;

    iget-object p1, p1, Ld/k/d/r;->n:Ld/k/d/o;

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->w:Ld/k/d/o;

    .line 1
    iget-object p1, p1, Ld/k/d/o;->f:Landroid/content/Context;

    .line 2
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, p4, p1}, Landroidx/fragment/app/Fragment;->W(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object p1, p0, Ld/k/d/p;->e:Ld/k/d/r;

    invoke-virtual {p1, v0}, Ld/k/d/r;->b(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Ld/k/d/p;->e:Ld/k/d/r;

    .line 3
    iget p3, p1, Ld/k/d/r;->m:I

    invoke-virtual {p1, v0, p3}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    goto :goto_3

    .line 4
    :cond_c
    iget-boolean p3, v0, Landroidx/fragment/app/Fragment;->r:Z

    if-nez p3, :cond_11

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->r:Z

    iget-object p1, p0, Ld/k/d/p;->e:Ld/k/d/r;

    iget-object p1, p1, Ld/k/d/r;->n:Ld/k/d/o;

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->w:Ld/k/d/o;

    .line 5
    iget-object p1, p1, Ld/k/d/o;->f:Landroid/content/Context;

    .line 6
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {v0, p4, p1}, Landroidx/fragment/app/Fragment;->W(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :goto_3
    iget-object p1, p0, Ld/k/d/p;->e:Ld/k/d/r;

    iget p3, p1, Ld/k/d/r;->m:I

    if-ge p3, v1, :cond_d

    iget-boolean p3, v0, Landroidx/fragment/app/Fragment;->q:Z

    if-eqz p3, :cond_d

    invoke-virtual {p1, v0, v1}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    goto :goto_4

    :cond_d
    iget-object p1, p0, Ld/k/d/p;->e:Ld/k/d/r;

    .line 7
    iget p3, p1, Ld/k/d/r;->m:I

    invoke-virtual {p1, v0, p3}, Ld/k/d/r;->U(Landroidx/fragment/app/Fragment;I)V

    .line 8
    :goto_4
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    if-eqz p1, :cond_10

    if-eqz v2, :cond_e

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    :cond_e
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_f
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    return-object p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Fragment "

    const-string p4, " did not create a view."

    invoke-static {p3, p2, p4}, Le/a/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with another fragment for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_12
    :goto_5
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Ld/k/d/p;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
