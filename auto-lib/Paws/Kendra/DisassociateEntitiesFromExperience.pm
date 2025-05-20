
package Paws::Kendra::DisassociateEntitiesFromExperience;
  use Moose;
  has EntityList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::EntityConfiguration]', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateEntitiesFromExperience');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DisassociateEntitiesFromExperienceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DisassociateEntitiesFromExperience - Arguments for method DisassociateEntitiesFromExperience on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateEntitiesFromExperience on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DisassociateEntitiesFromExperience.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateEntitiesFromExperience.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DisassociateEntitiesFromExperienceResponse =
      $kendra->DisassociateEntitiesFromExperience(
      EntityList => [
        {
          EntityId   => 'MyEntityId',    # min: 1, max: 47
          EntityType => 'USER',          # values: USER, GROUP

        },
        ...
      ],
      Id      => 'MyExperienceId',
      IndexId => 'MyIndexId',

      );

    # Results:
    my $FailedEntityList =
      $DisassociateEntitiesFromExperienceResponse->FailedEntityList;

 # Returns a L<Paws::Kendra::DisassociateEntitiesFromExperienceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DisassociateEntitiesFromExperience>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityList => ArrayRef[L<Paws::Kendra::EntityConfiguration>]

Lists users or groups in your IAM Identity Center identity source.



=head2 B<REQUIRED> Id => Str

The identifier of your Amazon Kendra experience.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for your Amazon Kendra experience.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateEntitiesFromExperience in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

