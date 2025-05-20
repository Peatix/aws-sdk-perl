
package Paws::Personalize::CreateSolutionVersion;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has SolutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TrainingMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingMode' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSolutionVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateSolutionVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateSolutionVersion - Arguments for method CreateSolutionVersion on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSolutionVersion on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateSolutionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSolutionVersion.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateSolutionVersionResponse = $personalize->CreateSolutionVersion(
      SolutionArn => 'MyArn',
      Name        => 'MyName',    # OPTIONAL
      Tags        => [
        {
          TagKey   => 'MyTagKey',      # min: 1, max: 128
          TagValue => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TrainingMode => 'FULL',    # OPTIONAL
    );

    # Results:
    my $SolutionVersionArn = $CreateSolutionVersionResponse->SolutionVersionArn;

    # Returns a L<Paws::Personalize::CreateSolutionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateSolutionVersion>

=head1 ATTRIBUTES


=head2 Name => Str

The name of the solution version.



=head2 B<REQUIRED> SolutionArn => Str

The Amazon Resource Name (ARN) of the solution containing the training
configuration information.



=head2 Tags => ArrayRef[L<Paws::Personalize::Tag>]

A list of tags
(https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html)
to apply to the solution version.



=head2 TrainingMode => Str

The scope of training to be performed when creating the solution
version. The default is C<FULL>. This creates a completely new model
based on the entirety of the training data from the datasets in your
dataset group.

If you use User-Personalization
(https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html),
you can specify a training mode of C<UPDATE>. This updates the model to
consider new items for recommendations. It is not a full retraining.
You should still complete a full retraining weekly. If you specify
C<UPDATE>, Amazon Personalize will stop automatic updates for the
solution version. To resume updates, create a new solution with
training mode set to C<FULL> and deploy it in a campaign. For more
information about automatic updates, see Automatic updates
(https://docs.aws.amazon.com/personalize/latest/dg/use-case-recipe-features.html#maintaining-with-automatic-updates).

The C<UPDATE> option can only be used when you already have an active
solution version created from the input solution using the C<FULL>
option and the input solution was trained with the User-Personalization
(https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html)
recipe or the legacy HRNN-Coldstart
(https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html)
recipe.

Valid values are: C<"FULL">, C<"UPDATE">, C<"AUTOTRAIN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSolutionVersion in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

