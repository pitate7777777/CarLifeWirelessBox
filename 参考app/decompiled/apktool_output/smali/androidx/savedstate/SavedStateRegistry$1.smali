.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/m/f;


# instance fields
.field public final synthetic a:Ld/r/a;


# direct methods
.method public constructor <init>(Ld/r/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Ld/r/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld/m/h;Ld/m/d$a;)V
    .locals 0

    sget-object p1, Ld/m/d$a;->ON_START:Ld/m/d$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Ld/r/a;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Ld/m/d$a;->ON_STOP:Ld/m/d$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Ld/r/a;

    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Ld/r/a;->e:Z

    :cond_1
    return-void
.end method
