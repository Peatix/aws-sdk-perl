
package Paws::Textract::GetAdapterVersion;
  use Moose;
  has AdapterId => (is => 'ro', isa => 'Str', required => 1);
  has AdapterVersion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAdapterVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::GetAdapterVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetAdapterVersion - Arguments for method GetAdapterVersion on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAdapterVersion on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method GetAdapterVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAdapterVersion.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $GetAdapterVersionResponse = $textract->GetAdapterVersion(
      AdapterId      => 'MyAdapterId',
      AdapterVersion => 'MyAdapterVersion',

    );

    # Results:
    my $AdapterId         = $GetAdapterVersionResponse->AdapterId;
    my $AdapterVersion    = $GetAdapterVersionResponse->AdapterVersion;
    my $CreationTime      = $GetAdapterVersionResponse->CreationTime;
    my $DatasetConfig     = $GetAdapterVersionResponse->DatasetConfig;
    my $EvaluationMetrics = $GetAdapterVersionResponse->EvaluationMetrics;
    my $FeatureTypes      = $GetAdapterVersionResponse->FeatureTypes;
    my $KMSKeyId          = $GetAdapterVersionResponse->KMSKeyId;
    my $OutputConfig      = $GetAdapterVersionResponse->OutputConfig;
    my $Status            = $GetAdapterVersionResponse->Status;
    my $StatusMessage     = $GetAdapterVersionResponse->StatusMessage;
    my $Tags              = $GetAdapterVersionResponse->Tags;

    # Returns a L<Paws::Textract::GetAdapterVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/GetAdapterVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdapterId => Str

A string specifying a unique ID for the adapter version you want to
retrieve information for.



=head2 B<REQUIRED> AdapterVersion => Str

A string specifying the adapter version you want to retrieve
information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAdapterVersion in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

