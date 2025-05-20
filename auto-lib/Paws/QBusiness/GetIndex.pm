
package Paws::QBusiness::GetIndex;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::GetIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetIndex - Arguments for method GetIndex on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIndex on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method GetIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIndex.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $GetIndexResponse = $qbusiness->GetIndex(
      ApplicationId => 'MyApplicationId',
      IndexId       => 'MyIndexId',

    );

    # Results:
    my $ApplicationId         = $GetIndexResponse->ApplicationId;
    my $CapacityConfiguration = $GetIndexResponse->CapacityConfiguration;
    my $CreatedAt             = $GetIndexResponse->CreatedAt;
    my $Description           = $GetIndexResponse->Description;
    my $DisplayName           = $GetIndexResponse->DisplayName;
    my $DocumentAttributeConfigurations =
      $GetIndexResponse->DocumentAttributeConfigurations;
    my $Error           = $GetIndexResponse->Error;
    my $IndexArn        = $GetIndexResponse->IndexArn;
    my $IndexId         = $GetIndexResponse->IndexId;
    my $IndexStatistics = $GetIndexResponse->IndexStatistics;
    my $Status          = $GetIndexResponse->Status;
    my $Type            = $GetIndexResponse->Type;
    my $UpdatedAt       = $GetIndexResponse->UpdatedAt;

    # Returns a L<Paws::QBusiness::GetIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/GetIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application connected to the
index.



=head2 B<REQUIRED> IndexId => Str

The identifier of the Amazon Q Business index you want information on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIndex in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

