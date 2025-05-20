
package Paws::QBusiness::GetRetriever;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has RetrieverId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'retrieverId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRetriever');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/retrievers/{retrieverId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::GetRetrieverResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetRetriever - Arguments for method GetRetriever on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRetriever on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method GetRetriever.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRetriever.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $GetRetrieverResponse = $qbusiness->GetRetriever(
      ApplicationId => 'MyApplicationId',
      RetrieverId   => 'MyRetrieverId',

    );

    # Results:
    my $ApplicationId = $GetRetrieverResponse->ApplicationId;
    my $Configuration = $GetRetrieverResponse->Configuration;
    my $CreatedAt     = $GetRetrieverResponse->CreatedAt;
    my $DisplayName   = $GetRetrieverResponse->DisplayName;
    my $RetrieverArn  = $GetRetrieverResponse->RetrieverArn;
    my $RetrieverId   = $GetRetrieverResponse->RetrieverId;
    my $RoleArn       = $GetRetrieverResponse->RoleArn;
    my $Status        = $GetRetrieverResponse->Status;
    my $Type          = $GetRetrieverResponse->Type;
    my $UpdatedAt     = $GetRetrieverResponse->UpdatedAt;

    # Returns a L<Paws::QBusiness::GetRetrieverResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/GetRetriever>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application using the
retriever.



=head2 B<REQUIRED> RetrieverId => Str

The identifier of the retriever.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRetriever in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

