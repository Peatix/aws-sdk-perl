
package Paws::Resiliencehub::DeleteAppInputSourceResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn');
  has AppInputSource => (is => 'ro', isa => 'Paws::Resiliencehub::AppInputSource', traits => ['NameInRequest'], request_name => 'appInputSource');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DeleteAppInputSourceResponse

=head1 ATTRIBUTES


=head2 AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 AppInputSource => L<Paws::Resiliencehub::AppInputSource>

Name of the input source from where the application resource is
imported from.


=head2 _request_id => Str


=cut

