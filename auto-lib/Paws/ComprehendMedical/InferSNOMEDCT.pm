
package Paws::ComprehendMedical::InferSNOMEDCT;
  use Moose;
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InferSNOMEDCT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::InferSNOMEDCTResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::InferSNOMEDCT - Arguments for method InferSNOMEDCT on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InferSNOMEDCT on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method InferSNOMEDCT.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InferSNOMEDCT.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $InferSNOMEDCTResponse = $comprehendmedical->InferSNOMEDCT(
      Text => 'MyOntologyLinkingBoundedLengthString',

    );

    # Results:
    my $Characters      = $InferSNOMEDCTResponse->Characters;
    my $Entities        = $InferSNOMEDCTResponse->Entities;
    my $ModelVersion    = $InferSNOMEDCTResponse->ModelVersion;
    my $PaginationToken = $InferSNOMEDCTResponse->PaginationToken;
    my $SNOMEDCTDetails = $InferSNOMEDCTResponse->SNOMEDCTDetails;

    # Returns a L<Paws::ComprehendMedical::InferSNOMEDCTResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/InferSNOMEDCT>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Text => Str

The input text to be analyzed using InferSNOMEDCT.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InferSNOMEDCT in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

