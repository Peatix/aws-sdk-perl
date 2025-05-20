
package Paws::Textract::UpdateAdapter;
  use Moose;
  has AdapterId => (is => 'ro', isa => 'Str', required => 1);
  has AdapterName => (is => 'ro', isa => 'Str');
  has AutoUpdate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAdapter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::UpdateAdapterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::UpdateAdapter - Arguments for method UpdateAdapter on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAdapter on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method UpdateAdapter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAdapter.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $UpdateAdapterResponse = $textract->UpdateAdapter(
      AdapterId   => 'MyAdapterId',
      AdapterName => 'MyAdapterName',           # OPTIONAL
      AutoUpdate  => 'ENABLED',                 # OPTIONAL
      Description => 'MyAdapterDescription',    # OPTIONAL
    );

    # Results:
    my $AdapterId    = $UpdateAdapterResponse->AdapterId;
    my $AdapterName  = $UpdateAdapterResponse->AdapterName;
    my $AutoUpdate   = $UpdateAdapterResponse->AutoUpdate;
    my $CreationTime = $UpdateAdapterResponse->CreationTime;
    my $Description  = $UpdateAdapterResponse->Description;
    my $FeatureTypes = $UpdateAdapterResponse->FeatureTypes;

    # Returns a L<Paws::Textract::UpdateAdapterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/UpdateAdapter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdapterId => Str

A string containing a unique ID for the adapter that will be updated.



=head2 AdapterName => Str

The new name to be applied to the adapter.



=head2 AutoUpdate => Str

The new auto-update status to be applied to the adapter.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Description => Str

The new description to be applied to the adapter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAdapter in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

