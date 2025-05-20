
package Paws::M2::ListApplications;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'environmentId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'names');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::ListApplicationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListApplications - Arguments for method ListApplications on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplications on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method ListApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplications.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $ListApplicationsResponse = $m2->ListApplications(
      EnvironmentId => 'MyIdentifier',             # OPTIONAL
      MaxResults    => 1,                          # OPTIONAL
      Names         => [ 'MyEntityName', ... ],    # OPTIONAL
      NextToken     => 'MyNextToken',              # OPTIONAL
    );

    # Results:
    my $Applications = $ListApplicationsResponse->Applications;
    my $NextToken    = $ListApplicationsResponse->NextToken;

    # Returns a L<Paws::M2::ListApplicationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/ListApplications>

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

The unique identifier of the runtime environment where the applications
are deployed.



=head2 MaxResults => Int

The maximum number of applications to return.



=head2 Names => ArrayRef[Str|Undef]

The names of the applications.



=head2 NextToken => Str

A pagination token to control the number of applications displayed in
the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplications in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

