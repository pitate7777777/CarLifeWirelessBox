.class public final Lg/a/z0/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lf/k/f;

.field public final b:[Ljava/lang/Object;

.field public final c:[Lg/a/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lg/a/s0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lf/k/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/a/z0/t;->a:Lf/k/f;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lg/a/z0/t;->b:[Ljava/lang/Object;

    new-array p1, p2, [Lg/a/s0;

    iput-object p1, p0, Lg/a/z0/t;->c:[Lg/a/s0;

    return-void
.end method
