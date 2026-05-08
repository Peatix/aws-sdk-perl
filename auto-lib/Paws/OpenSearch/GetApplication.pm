
package Paws::OpenSearch::GetApplication;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/application/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::GetApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetApplication - Arguments for method GetApplication on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplication on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method GetApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplication.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $GetApplicationResponse = $es->GetApplication(
      Id => 'MyId',

    );

    # Results:
    my $AppConfigs  = $GetApplicationResponse->AppConfigs;
    my $Arn         = $GetApplicationResponse->Arn;
    my $CreatedAt   = $GetApplicationResponse->CreatedAt;
    my $DataSources = $GetApplicationResponse->DataSources;
    my $Endpoint    = $GetApplicationResponse->Endpoint;
    my $IamIdentityCenterOptions =
      $GetApplicationResponse->IamIdentityCenterOptions;
    my $Id            = $GetApplicationResponse->Id;
    my $LastUpdatedAt = $GetApplicationResponse->LastUpdatedAt;
    my $Name          = $GetApplicationResponse->Name;
    my $Status        = $GetApplicationResponse->Status;

    # Returns a L<Paws::OpenSearch::GetApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier of the OpenSearch application to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplication in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

