
package Paws::QBusiness::GetDataAccessor;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataAccessorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataAccessorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataAccessor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/dataaccessors/{dataAccessorId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::GetDataAccessorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetDataAccessor - Arguments for method GetDataAccessor on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataAccessor on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method GetDataAccessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataAccessor.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $GetDataAccessorResponse = $qbusiness->GetDataAccessor(
      ApplicationId  => 'MyApplicationId',
      DataAccessorId => 'MyDataAccessorId',

    );

    # Results:
    my $ActionConfigurations = $GetDataAccessorResponse->ActionConfigurations;
    my $ApplicationId        = $GetDataAccessorResponse->ApplicationId;
    my $CreatedAt            = $GetDataAccessorResponse->CreatedAt;
    my $DataAccessorArn      = $GetDataAccessorResponse->DataAccessorArn;
    my $DataAccessorId       = $GetDataAccessorResponse->DataAccessorId;
    my $DisplayName          = $GetDataAccessorResponse->DisplayName;
    my $IdcApplicationArn    = $GetDataAccessorResponse->IdcApplicationArn;
    my $Principal            = $GetDataAccessorResponse->Principal;
    my $UpdatedAt            = $GetDataAccessorResponse->UpdatedAt;

    # Returns a L<Paws::QBusiness::GetDataAccessorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/GetDataAccessor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the Amazon Q Business application.



=head2 B<REQUIRED> DataAccessorId => Str

The unique identifier of the data accessor to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataAccessor in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

