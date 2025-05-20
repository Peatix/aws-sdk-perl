
package Paws::M2::GetDataSetDetails;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSetName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataSetDetails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/datasets/{dataSetName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::GetDataSetDetailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetDataSetDetails - Arguments for method GetDataSetDetails on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataSetDetails on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method GetDataSetDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataSetDetails.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $GetDataSetDetailsResponse = $m2->GetDataSetDetails(
      ApplicationId => 'MyIdentifier',
      DataSetName   => 'MyString200',

    );

    # Results:
    my $Blocksize          = $GetDataSetDetailsResponse->Blocksize;
    my $CreationTime       = $GetDataSetDetailsResponse->CreationTime;
    my $DataSetName        = $GetDataSetDetailsResponse->DataSetName;
    my $DataSetOrg         = $GetDataSetDetailsResponse->DataSetOrg;
    my $FileSize           = $GetDataSetDetailsResponse->FileSize;
    my $LastReferencedTime = $GetDataSetDetailsResponse->LastReferencedTime;
    my $LastUpdatedTime    = $GetDataSetDetailsResponse->LastUpdatedTime;
    my $Location           = $GetDataSetDetailsResponse->Location;
    my $RecordLength       = $GetDataSetDetailsResponse->RecordLength;

    # Returns a L<Paws::M2::GetDataSetDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/GetDataSetDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application that this data set is
associated with.



=head2 B<REQUIRED> DataSetName => Str

The name of the data set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataSetDetails in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

