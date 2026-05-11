.class public Ld/p/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/p/d;->M0(Ld/b/k/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/p/d;


# direct methods
.method public constructor <init>(Ld/p/d;)V
    .locals 0

    iput-object p1, p0, Ld/p/d$a;->a:Ld/p/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    iget-object p1, p0, Ld/p/d$a;->a:Ld/p/d;

    if-eqz p3, :cond_0

    iget-boolean p3, p1, Ld/p/d;->w0:Z

    iget-object v0, p1, Ld/p/d;->v0:Ljava/util/Set;

    iget-object v1, p1, Ld/p/d;->y0:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_0
    iget-boolean p3, p1, Ld/p/d;->w0:Z

    iget-object v0, p1, Ld/p/d;->v0:Ljava/util/Set;

    iget-object v1, p1, Ld/p/d;->y0:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    or-int/2addr p2, p3

    iput-boolean p2, p1, Ld/p/d;->w0:Z

    return-void
.end method
