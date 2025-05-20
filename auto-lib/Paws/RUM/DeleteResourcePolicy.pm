
package Paws::RUM::DeleteResourcePolicy;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has PolicyRevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'policyRevisionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appmonitor/{Name}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::DeleteResourcePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::DeleteResourcePolicy - Arguments for method DeleteResourcePolicy on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourcePolicy on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method DeleteResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourcePolicy.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $DeleteResourcePolicyResponse = $rum->DeleteResourcePolicy(
      Name             => 'MyAppMonitorName',
      PolicyRevisionId => 'MyPolicyRevisionId',    # OPTIONAL
    );

    # Results:
    my $PolicyRevisionId = $DeleteResourcePolicyResponse->PolicyRevisionId;

    # Returns a L<Paws::RUM::DeleteResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/DeleteResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The app monitor that you want to remove the resource policy from.



=head2 PolicyRevisionId => Str

Specifies a specific policy revision to delete. Provide a
C<PolicyRevisionId> to ensure an atomic delete operation. If the
revision ID that you provide doesn't match the latest policy revision
ID, the request will be rejected with an
C<InvalidPolicyRevisionIdException> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourcePolicy in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

