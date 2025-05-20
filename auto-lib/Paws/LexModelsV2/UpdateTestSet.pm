
package Paws::LexModelsV2::UpdateTestSet;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has TestSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testSetId', required => 1);
  has TestSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTestSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsets/{testSetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::UpdateTestSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateTestSet - Arguments for method UpdateTestSet on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTestSet on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method UpdateTestSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTestSet.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $UpdateTestSetResponse = $models - v2 -lex->UpdateTestSet(
      TestSetId   => 'MyId',
      TestSetName => 'MyName',
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $CreationDateTime    = $UpdateTestSetResponse->CreationDateTime;
    my $Description         = $UpdateTestSetResponse->Description;
    my $LastUpdatedDateTime = $UpdateTestSetResponse->LastUpdatedDateTime;
    my $Modality            = $UpdateTestSetResponse->Modality;
    my $NumTurns            = $UpdateTestSetResponse->NumTurns;
    my $RoleArn             = $UpdateTestSetResponse->RoleArn;
    my $Status              = $UpdateTestSetResponse->Status;
    my $StorageLocation     = $UpdateTestSetResponse->StorageLocation;
    my $TestSetId           = $UpdateTestSetResponse->TestSetId;
    my $TestSetName         = $UpdateTestSetResponse->TestSetName;

    # Returns a L<Paws::LexModelsV2::UpdateTestSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/UpdateTestSet>

=head1 ATTRIBUTES


=head2 Description => Str

The new test set description.



=head2 B<REQUIRED> TestSetId => Str

The test set Id for which update test operation to be performed.



=head2 B<REQUIRED> TestSetName => Str

The new test set name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTestSet in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

