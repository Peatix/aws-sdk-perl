
package Paws::AccessAnalyzer::CheckAccessNotGranted;
  use Moose;
  has Access => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::Access]', traits => ['NameInRequest'], request_name => 'access', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument', required => 1);
  has PolicyType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckAccessNotGranted');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policy/check-access-not-granted');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::CheckAccessNotGrantedResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CheckAccessNotGranted - Arguments for method CheckAccessNotGranted on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckAccessNotGranted on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method CheckAccessNotGranted.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckAccessNotGranted.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $CheckAccessNotGrantedResponse =
      $access -analyzer->CheckAccessNotGranted(
      Access => [
        {
          Actions   => [ 'MyAction', ... ],    # max: 100; OPTIONAL
          Resources => [
            'MyResource', ...                  # max: 2048
          ],    # max: 100; OPTIONAL
        },
        ...
      ],
      PolicyDocument => 'MyAccessCheckPolicyDocument',
      PolicyType     => 'IDENTITY_POLICY',

      );

    # Results:
    my $Message = $CheckAccessNotGrantedResponse->Message;
    my $Reasons = $CheckAccessNotGrantedResponse->Reasons;
    my $Result  = $CheckAccessNotGrantedResponse->Result;

    # Returns a L<Paws::AccessAnalyzer::CheckAccessNotGrantedResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/CheckAccessNotGranted>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Access => ArrayRef[L<Paws::AccessAnalyzer::Access>]

An access object containing the permissions that shouldn't be granted
by the specified policy. If only actions are specified, IAM Access
Analyzer checks for access to peform at least one of the actions on any
resource in the policy. If only resources are specified, then IAM
Access Analyzer checks for access to perform any action on at least one
of the resources. If both actions and resources are specified, IAM
Access Analyzer checks for access to perform at least one of the
specified actions on at least one of the specified resources.



=head2 B<REQUIRED> PolicyDocument => Str

The JSON policy document to use as the content for the policy.



=head2 B<REQUIRED> PolicyType => Str

The type of policy. Identity policies grant permissions to IAM
principals. Identity policies include managed and inline policies for
IAM roles, users, and groups.

Resource policies grant permissions on Amazon Web Services resources.
Resource policies include trust policies for IAM roles and bucket
policies for Amazon S3 buckets.

Valid values are: C<"IDENTITY_POLICY">, C<"RESOURCE_POLICY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckAccessNotGranted in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

