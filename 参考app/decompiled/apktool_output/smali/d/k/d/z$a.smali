.class public final Ld/k/d/z$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/k/d/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/Fragment;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ld/m/d$b;

.field public h:Ld/m/d$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld/k/d/z$a;->a:I

    iput-object p2, p0, Ld/k/d/z$a;->b:Landroidx/fragment/app/Fragment;

    sget-object p1, Ld/m/d$b;->i:Ld/m/d$b;

    iput-object p1, p0, Ld/k/d/z$a;->g:Ld/m/d$b;

    iput-object p1, p0, Ld/k/d/z$a;->h:Ld/m/d$b;

    return-void
.end method
