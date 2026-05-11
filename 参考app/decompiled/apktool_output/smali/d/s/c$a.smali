.class public Ld/s/c$a;
.super Ld/s/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/c;->L(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/s/c;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Ld/s/c$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ld/s/l;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ld/s/i;)V
    .locals 3

    iget-object v0, p0, Ld/s/c$a;->a:Landroid/view/View;

    .line 1
    sget-object v1, Ld/s/v;->a:Ld/s/b0;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Ld/s/b0;->e(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Ld/s/c$a;->a:Landroid/view/View;

    .line 3
    sget-object v1, Ld/s/v;->a:Ld/s/b0;

    invoke-virtual {v1, v0}, Ld/s/b0;->a(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1, p0}, Ld/s/i;->w(Ld/s/i$d;)Ld/s/i;

    return-void
.end method
