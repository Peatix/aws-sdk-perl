
package Paws::AccessAnalyzer::CheckNoNewAccess;
  use Moose;
  has ExistingPolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'existingPolicyDocument', required => 1);
  has NewPolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'newPolicyDocument', required => 1);
  has PolicyType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckNoNewAccess');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy/check-no-new-access');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::CheckNoNewAccessResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CheckNoNewAccess - Arguments for method CheckNoNewAccess on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckNoNewAccess on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method CheckNoNewAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckNoNewAccess.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $CheckNoNewAccessResponse = $access -analyzer->CheckNoNewAccess(
      ExistingPolicyDocument => 'MyAccessCheckPolicyDocument',
      NewPolicyDocument      => 'MyAccessCheckPolicyDocument',
      PolicyType             => 'IDENTITY_POLICY',

    );

    # Results:
    my $Message = $CheckNoNewAccessResponse->Message;
    my $Reasons = $CheckNoNewAccessResponse->Reasons;
    my $Result  = $CheckNoNewAccessResponse->Result;

    # Returns a L<Paws::AccessAnalyzer::CheckNoNewAccessResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/CheckNoNewAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExistingPolicyDocument => Str

The JSON policy document to use as the content for the existing policy.



=head2 B<REQUIRED> NewPolicyDocument => Str

The JSON policy document to use as the content for the updated policy.



=head2 B<REQUIRED> PolicyType => Str

The type of policy to compare. Identity policies grant permissions to
IAM principals. Identity policies include managed and inline policies
for IAM roles, users, and groups.

Resource policies grant permissions on Amazon Web Services resources.
Resource policies include trust policies for IAM roles and bucket
policies for Amazon S3 buckets. You can provide a generic input such as
identity policy or resource policy or a specific input such as managed
policy or Amazon S3 bucket policy.

Valid values are: C<"IDENTITY_POLICY">, C<"RESOURCE_POLICY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckNoNewAccess in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

