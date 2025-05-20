
package Paws::Resiliencehub::AddDraftAppVersionResourceMappingsResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);
  has ResourceMappings => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::ResourceMapping]', traits => ['NameInRequest'], request_name => 'resourceMappings', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::AddDraftAppVersionResourceMappingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 B<REQUIRED> AppVersion => Str

The version of the application.


=head2 B<REQUIRED> ResourceMappings => ArrayRef[L<Paws::Resiliencehub::ResourceMapping>]

List of sources that are used to map a logical resource from the
template to a physical resource. You can use sources such as
CloudFormation, Terraform state files, AppRegistry applications, or
Amazon EKS.


=head2 _request_id => Str


=cut

