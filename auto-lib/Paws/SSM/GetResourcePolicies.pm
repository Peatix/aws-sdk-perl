
package Paws::SSM::GetResourcePolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourcePolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetResourcePoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetResourcePolicies - Arguments for method GetResourcePolicies on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourcePolicies on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetResourcePolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourcePolicies.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetResourcePoliciesResponse = $ssm->GetResourcePolicies(
      ResourceArn => 'MyResourceArnString',
      MaxResults  => 1,                       # OPTIONAL
      NextToken   => 'MyString',              # OPTIONAL
    );

    # Results:
    my $NextToken = $GetResourcePoliciesResponse->NextToken;
    my $Policies  = $GetResourcePoliciesResponse->Policies;

    # Returns a L<Paws::SSM::GetResourcePoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetResourcePolicies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 B<REQUIRED> ResourceArn => Str

Amazon Resource Name (ARN) of the resource to which the policies are
attached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourcePolicies in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

